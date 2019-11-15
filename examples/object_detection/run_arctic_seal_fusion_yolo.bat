@echo off

REM Setup VIAME Paths (no need to set if installed to registry or already set up)

SET VIAME_INSTALL=.\..\..

CALL "%VIAME_INSTALL%\setup_viame.bat"

REM Run Pipeline

pipeline_runner.exe -p "%VIAME_INSTALL%/configs/pipelines/detector_arctic_seal_fusion_yolo.pipe" ^
                    -s optical_input:video_filename=input_image_list_seal_eo.txt ^
                    -s thermal_input:video_filename=input_image_list_seal_ir.txt

pause
 