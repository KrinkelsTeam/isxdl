; -- isxdl_example.iss --
;
; More information at: https://istool.krinkels.org
;
; The script shows how to use isxdl to download files, 
; as well as translating the downloading dialog into other languages.

#include "isxdl.iss"

[Setup]
AppName=My Program
AppVersion=1.5
DefaultDirName={autopf}\My Program
DefaultGroupName=My Program
OutputDir=userdocs:Inno Setup Examples Output

[Files]
; Place any regular files here
Source: "compiler:Examples\MyProg.exe"; DestDir: "{app}";
Source: "compiler:Examples\MyProg.chm"; DestDir: "{app}";
; These files will be downloaded
Source: "{tmp}\innosetup-latest.exe"; DestDir: "{app}"; Flags: external
Source: "{tmp}\ISCrypt.dll"; DestDir: "{app}"; Flags: external
;Language files for Downloading dialog
Source: "languages\english.ini"; Flags: dontcopy
Source: "languages\russian.ini"; Flags: dontcopy

[Languages]
Name: english; MessagesFile: "compiler:Default.isl"
Name: russian; MessagesFile: "compiler:Languages\Russian.isl"

[Code]
function NextButtonClick(CurPageID: Integer): Boolean;
var
  hWnd: Integer;
  LngFile: String;
begin
  if CurPageID = wpReady then begin
    // Extract the language selected for installation to a temporary folder
    LngFile := ExpandConstant('{tmp}\' + ActiveLanguage + '.ini');
    if not FileExists(ExpandConstant('{tmp}\' + ActiveLanguage + '.ini')) then 
      ExtractTemporaryFile(ActiveLanguage + '.ini');
    isxdl_SetOption('language', LngFile);
    
    // Change title of the download window
    isxdl_SetOption('title', PAnsiChar(WizardForm.Caption));
    
    // Add files for downloading
    isxdl_AddFile('https://jrsoftware.org/download.php/is.exe?dontcount=1', ExpandConstant('{tmp}\innosetup-latest.exe'));
    isxdl_AddFile('https://jrsoftware.org/download.php/iscrypt.dll?dontcount=1', ExpandConstant('{tmp}\ISCrypt.dll'));
    isxdl_AddFile('https://download.microsoft.com/download/2/0/E/20E90413-712F-438C-988E-FDAA79A8AC3D/dotnetfx35.exe', ExpandConstant('{tmp}\dotnetfx35.exe'));
    
    hWnd := StrToInt(ExpandConstant('{wizardhwnd}'));
    if isxdl_DownloadFiles(hWnd) > 0 then // This downloads the files to {tmp}
      Result := True
    else
      SuppressibleMsgBox('Setup could not download the extra files.', mbCriticalError, MB_OK, IDOK);
  end else
    Result := True;
end;