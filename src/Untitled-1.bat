@rem **********************************************
@rem       Proceso Puesta en produccion
@rem       Creado por: HITSS
@rem       fecha: 18-12-2018
@rem       FSP : BRIEF 32828 
@rem **********************************************

net use "\\172.22.4.47\PPPoliedros"

@REM SERVER SERVICES
net use "\\172.22.85.254\d$"
net use "\\172.22.85.34\d$"
net use "\\172.22.4.58\d$"
net use "\\172.22.85.196\d$"
net use "\\172.22.85.103\d$"
net use "\\172.22.4.145\d$"
net use "\\172.23.3.176\d$"

@Echo Se ha iniciado el proceso de PAP del cambio BRIEF B32828

@rem SERVICIO VALIDACION ENTERPRISE


@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_WPOLBA04::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation\*.*" "\\172.22.85.34\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_WPOLBA05::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation\*.*" "\\172.22.4.58\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_WPOLBA06::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation\*.*" "\\172.22.85.196\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_WPOLBA08::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation\*.*" "\\172.22.85.103\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_WPOLBA15::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation\*.*" "\\172.22.4.145\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_WPOLBA16::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation\*.*" "\\172.23.3.176\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svr.txt


@rem DEMOGRAPHICS


@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_WPOLBA04::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics\*.*" "\\172.22.85.34\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_WPOLBA05::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics\*.*" "\\172.22.4.58\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_WPOLBA06::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics\*.*" "\\172.22.85.196\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_WPOLBA08::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics\*.*" "\\172.22.85.103\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_WPOLBA15::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics\*.*" "\\172.22.4.145\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_WPOLBA16::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics\*.*" "\\172.23.3.176\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo.txt


@rem SERVICIO VALIDACION VD


@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_VD_WPOLBA04::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
xcopy "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation.VD\*.*" "\\172.22.85.34\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation.VD\" /H /k /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_VD_WPOLBA05::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
xcopy "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation.VD\*.*" "\\172.22.4.58\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation.VD\" /H /k /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_VD_WPOLBA06::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
xcopy "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation.VD\*.*" "\\172.22.85.196\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation.VD\" /H /k /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_VD_WPOLBA08::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
xcopy "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation.VD\*.*" "\\172.22.85.103\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation.VD\" /H /k /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_VD_WPOLBA15::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
xcopy "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation.VD\*.*" "\\172.22.4.145\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation.VD\" /H /k /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::SERVICIO_VD_WPOLBA16::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt
xcopy "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Validation.VD\*.*" "\\172.23.3.176\d$\inetpub\wwwrootValidation\Comcel.Pol.WCF.Host.Validation.VD\" /H /k /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_svrVD.txt


@rem DEMOGRAPHICS VD


@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_VD_WPOLBA04::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics.VD\*.*" "\\172.22.85.34\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics.VD" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_VD_WPOLBA05::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics.VD\*.*" "\\172.22.4.58\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics.VD" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_VD_WPOLBA06::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics.VD\*.*" "\\172.22.85.196\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics.VD" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_VD_WPOLBA08::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics.VD\*.*" "\\172.22.85.103\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics.VD" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_VD_WPOLBA15::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics.VD\*.*" "\\172.22.4.145\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics.VD" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
@Echo *******COMIENZA LA EJECUCION DEL BAT PAP::DEMOGRAPHICS_VD_WPOLBA16::%date:~0,15%  %time:~0,8% *********** >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt
XCOPY "\\172.22.4.47\PPPoliedros\HITSS\B32828\Implementacion\SERVICIO\Comcel.Pol.WCF.Host.Demographics.VD\*.*" "\\172.23.3.176\d$\inetpub\wwwrootDemograficos\Comcel.Pol.WCF.Host.Demographics.VD" /H /K /E /R /Y /F /I >> \\172.22.4.47\PPPoliedros\HITSS\B32828\Logs\PAP_demo_VD.txt



@Echo Se ha finalizado el proceso de PAP del cambio BRIEF B32828
PAUSE
