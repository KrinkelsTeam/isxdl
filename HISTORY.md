History
=======

Version 6.0.0
-------------
- Migrate project to Unicode.
- Re-creating all language files (UTF-8) + added many new languages
- Added HTTPS protocol support
- Updated graphics (icon and small wizard image)
- Added an example of using the library
- General edits and project updates

Version 5.1.0
-------------
- Can use a custom wizard image.
- Uses SIZE command to get size of files on ftp servers.
- Disabled optimization - is it me or is msvc bugging?
- Won't add identical files more than once.
- Disabled resume.

Version 4.0.8
-------------
- Fixed a bug in resume if the server didn't support resume.
- A bug caused by aborting a download was fixed.
- Numbers are formatted in the default user locale.
- Fixed bug that prevented cancelling downloads for illegal addresses.
- Asks for user name and password if necessary when download from ftp.
- Changed some error messages.
- Shows icon for system menu.
- Uses MS Shell Dlg font.
- If resume is disabled, incomplete files will be deleted.

Version 3.0.4.3
---------------
- Can use language files.
- Doesn't hide parent window in simple mode.
- Bug fixes.
- Supports resume for http.
- Spanish translation by Lobo Lunar.
- Norwegian translation.

Version 3.0.4 (11/30/2002)
--------------------------
- Doesn't get size of files in simple mode.
- Bugfix in isxdl_SetOption and resetting simple mode.
- Standard wizard look.
- Automatically hides parent window.
- Two new options: label and description.

Version 1.3.1 (7/24/2002)
-------------------------
- Minor tweaks and modifications.
- Added function isxdl_GetFileName to give you the real name of the downloaded file.
- Fixed overflow when calculating remaining time.
- Added a little about box.
- Improved handling of progress bars.
- Added new option 'simple' that gives you a simple window with a custom message.

Version 1.3.0 (7/15/2002)
-------------------------
- Abort should really abort (possible memory leaks though).
- Supports ftp.
- Handles HTTP_STATUS_MOVED if not handled by wininet (untested).
- Added function IsConnected to tell whether the computer is connected to the Internet or not (experimental?). Requires IE4.
- Added function SetOption to set options. Supported options are: 'title', 'noftpsize', 'debug', 'resume', 'language', 'label', 'description'.
- Added prefix 'isxdl_' to all functions.
- Added function AddFileSize with a parameter for file size. Means the DLL will not need to check the size itself.

Version 1.2.1
-------------
- Minor tweaks.
- Added method ClearFiles to clear the internal file list.

Version 1.2.0
-------------
No more divide by zero errors for files less than 1024 bytes.
Supports user name and password in the url.
Demo scripts for both ISX2 and ISX3.

Version 1.0.0
-------------
- Initial release.
