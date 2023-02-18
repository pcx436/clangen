; Clan-gen Installer Script

#define ApplicationBaseName "Clangen"
#define ApplicationFullName "Clangen (fan edit) by Sablesteel"

; Update this line to the date of the latest Clan-gen (fan edit) by Sablesteel release 
; (or choose your own version-numbering scheme)
#define ApplicationVersion "0.6.1"

#define ApplicationURL "https://sablesteel.itch.io/clan-gen-fan-edit"

; Comment out the following line and uncomment the second one in order to place help files, EULA, etc.
; in the same program group as the main Clan-gen' shortcuts
;#define DocumentationFolder "Documentation"
;#define DocumentationFolder "."

; Filenames for the compiled installer
#define InstallerBaseName ApplicationBaseName + "_Win32"
#define InstallerFullName InstallerBaseName + ".exe"

; Filenames for the Inno sourcecode
#define SourceFullName ApplicationBaseName + ".iss"

;-------------------------------------------------------------------------------

[Setup]
OutputBaseFilename={#InstallerBaseName}
SourceDir=.
AppName={#ApplicationFullName}
DefaultDirName={commonpf}\{#ApplicationFullName}
DefaultGroupName={#ApplicationFullName}
OutputDir=.

; Control Panel information
AppPublisherURL={#ApplicationURL}
AppVersion={#ApplicationVersion}

; Installer icon (if you'd like to provide one)
; Download this from https://raw.githubusercontent.com/Thlumyn/clangen/development/main.ico
SetupIconFile=.\main.ico
; Uninstalling will not delete saves so I figured no need for an uninstaller.
UninstallDisplayIcon=.\main.ico
UninstallDisplayName={#ApplicationFullName} {#ApplicationVersion}
; Installer information
VersionInfoProductName={#ApplicationFullName}
VersionInfoVersion={#ApplicationVersion}

;-------------------------------------------------------------------------------

[Files]
Source: "dist\Clangen\*"; DestDir: {app}; Flags: recursesubdirs; Excludes: "{#InstallerFullName},{#SourceFullName},(saves)";
[Dirs]
; Permissions: users-full allows the user to write to the saves directory
Name: "{app}\saves"; Permissions: users-full

;-------------------------------------------------------------------------------
[Icons]
;; Create Clan-gen (fan edit) icons
Name: {group}\Clan-gen (fan edit); Filename: {app}\Clangen.exe; Comment: "Clan-gen (fan edit) by Sablesteel"
Name: {commondesktop}\Clan-gen (fan edit); Filename: {app}\Clangen.exe; Comment: "Clan-gen (fan edit) by Sablesteel";
