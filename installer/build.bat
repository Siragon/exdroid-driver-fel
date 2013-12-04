@echo off
REM  Síragon AOSU is free software: you can redistribute it and/or modify
REM  it under the terms of the GNU General Public License as published by
REM  the Free Software Foundation, either version 3 of the License, or
REM  (at your option) any later version.
REM  
REM  Síragon AOSU is distributed in the hope that it will be useful,
REM  but WITHOUT ANY WARRANTYREM without even the implied warranty of
REM  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
REM  GNU General Public License for more details.
REM  
REM  You should have received a copy of the GNU General Public License
REM  along with Síragon AOSU. If not, see <http://www.gnu.org/licenses/>. 

del TB-7000_FEL.7z
plugins\7z.exe a TB-7000_FEL.7z ..\* -x!installer -x!.git -x!images\Thumbs.db -x!*\dpinst.properties -x!*\inf.properties -x!*\installer.properties -x!*\notice.txt -x!.gitignore
"%ProgramFiles(x86)%\NSIS\Unicode\makensis.exe" installer.nsi
@pause