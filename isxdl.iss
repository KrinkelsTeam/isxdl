[Files]
#if FileExists('source\Release\isxdl.dll')
Source: "source\Release\isxdl.dll"; Flags: dontcopy
#else
Source: "isxdl.dll"; Flags: dontcopy
#endif

[Code]
function isxdl_Download(hWnd: Integer; URL, Filename: String): Integer;
  external 'isxdl_Download@files:isxdl.dll stdcall';

procedure isxdl_AddFile(URL, Filename: String);
  external 'isxdl_AddFile@files:isxdl.dll stdcall';

procedure isxdl_AddFileSize(URL, Filename: String; Size: Cardinal);
  external 'isxdl_AddFileSize@files:isxdl.dll stdcall';

function isxdl_DownloadFiles(hWnd: Integer): Integer;
  external 'isxdl_DownloadFiles@files:isxdl.dll stdcall';

procedure isxdl_ClearFiles;
  external 'isxdl_ClearFiles@files:isxdl.dll stdcall';

function isxdl_IsConnected: Integer;
  external 'isxdl_IsConnected@files:isxdl.dll stdcall';

function isxdl_SetOption(Option, Value: String): Integer;
  external 'isxdl_SetOption@files:isxdl.dll stdcall';

function isxdl_GetFileName(URL: String): String;
  external 'isxdl_GetFileName@files:isxdl.dll stdcall';
