#include-once
; #INDEX# =======================================================================================================================
; Title .........: Safeguard UDF
; AutoIt Version : 3.3.14.5
; Language ......: English
; Description ...: AutoIt resources for use with Safeguard for Privileged Passwords (SPP)
; Author ........: petrsnd
; Resources .....: GitHub:   https://github.com/OneIdentity/SafeguardAutoIt
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _SafeguardEnableDebug()
; _SafeguardDisableDebug()
; _SafeguardConnectPassword($sAppliance, $sIdentityProvider, $sUsername, $sPassword, $bInsecure = False)
; _SafeguardConnectCertificateFile($sAppliance, $sIdentityProvider, $sUsername, $sPassword, $bInsecure = False)
; _SafeguardConnectCertificateThumbprint($sAppliance, $sIdentityProvider, $sUsername, $sPassword, $bInsecure = False)
; _SafeguardConnectGui($sAppliance, $bInsecure = False)
; _SafeguardInvokeMethod($sServiceName, $sMethod, $sRelativeUrl, $sBody, $sQueryParams, $sAdditionalHeaders)
; ===============================================================================================================================

; #INTERNAL_USE_ONLY#============================================================================================================
; __SafeguardDisableSsl
; __SafeguardEnableSsl
; __SafeguardWriteDebug
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Const $__SPP_DEFAULT_API_VERSION = "v3"
Const $__SPP_DEBUG_FILE  = @ScriptDir & "\SafeguardAutoIt_debug.log"
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
Global $__spp_debugging       = False
Global $__spp_ignore_ssl      = False
Global $__spp_api_token       = ""
Global $__spp_appliance       = ""
Global $__spp_api_version     = $__SPP_DEFAULT_API_VERSION
Global $__spp_idp             = ""
Global $__spp_username        = ""
Global $__spp_cert_thumbprint = ""
Global $__spp_cert_file       = ""
Global $__spp_gui             = False
; ===============================================================================================================================


; #FUNCTION# ====================================================================================================================
; Name...........: _SafeguardEnableDebug
; Description ...: Enable debug logging
; Syntax.........: _SafeguardEnableDebug()
; Author ........: petrsnd
; Remarks .......: The debug is created in the script directory
; ===============================================================================================================================
Func _SafeguardEnableDebug()
	$__spp_debugging = True
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: _SafeguardDisableDebug
; Description ...: Disable debug logging
; Syntax.........: _SafeguardDisableDebug()
; Author ........: petrsnd
; Remarks .......: The debug is created in the script directory
; ===============================================================================================================================
Func _SafeguardDisableDebug()
	$__spp_debugging = False
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: _SafeguardConnectPassword
; Description ...: Connect to SPP with a identity provider/username and password
; Syntax.........: _SafeguardConnectPassword($sAppliance, $sIdentityProvider, $sUsername, $sPassword[, $bInsecure = False])
; Parameters ....: Appliance         - String; Network address of SPP appliance
;                  IdentityProvider  - String; Name of an identity provider (Local, <domain name>, etc.)
;                  Username          - String; Name of the user to authenticate
;                  Password          - String; Password of the user to authenticate
;                  Insecure          - [Optional] Boolean; Whether to ignore TLS errors when connecting
; Return values .: Success - Returns ""
;                  Failure - Returns "" and sets @error:
;                  |1  - Unable to find executable
;                  |2  - Supplied exe path does not exist
;                  |3  - Error occurred searching for executable
; Author ........: petrsnd
; Modified ......: N/A
; Remarks .......: 
; ===============================================================================================================================
Func _SafeguardConnectPassword($sAppliance, $sIdentityProvider, $sUsername, $sPassword[, $bInsecure = False])

EndFunc

