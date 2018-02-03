# CIS 5 - System Services

# Level 1 services to disable
default['cis-5']['level1']['services'] = ['Browser', 'HomeGroupListener', 'HomeGroupProvider', 'IISADMIN', 'irmon', 'SharedAccess' 'LxssManager', 'FTPSVC', 'RpcLocator', 'RemoteAccess', 'simptcp', 'SSDPSRV', 'upnphost', 'WMSvc', 'WMPNetworkSvc', 'icssvc', 'WinHttpAutoProxySvc', 'W3SVC', 'XboxGipSvc', 'xbgm', 'XblAuthManager', 'XblGameSave', 'XboxNetApiSvc']

# Level 2 services to disable
default['cis-5']['level2']['services'] = ['BthHFSrv', 'bthserv', 'MapsBroker', 'lfsvc', 'lltdsvc', 'MSiSCSI', 'PNRPsvc', 'p2psvc', 'p2pimsvc', 'PNRPAutoReg', 'wercplsupport', 'RasAuto', 'SessionEnv', 'TermService', 'UmRdpService', 'RemoteRegistry', 'LanmanServer', 'SNMP', 'WerSvc', 'Wecsvc', 'WpnService', 'WinRM']
