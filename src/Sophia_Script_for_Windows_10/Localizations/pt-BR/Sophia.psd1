﻿ConvertFrom-StringData -StringData @'
UnsupportedOSBitness                      = O guião suporta apenas Windows de 64 bits.
UnsupportedOSBuild                        = O script é compatível apenas com o Windows 10 22H2. Seu sistema operacional é o {0}.
UnsupportedWindowsTerminal                = A versão do Windows Terminal é inferior a 1.20. Atualize-a na Microsoft Store e tente novamente.
UpdateWarning                             = La tua build di Windows 10: {0}.{1}. Build suportadas: {2}+. Execute o Windows Update e tente novamente.
UnsupportedLanguageMode                   = A sessão PowerShell em funcionamento em um modo de linguagem limitada.
LoggedInUserNotAdmin                      = O usuário logado não tem direitos de administrador.
UnsupportedPowerShell                     = Você está tentando executar o script via PowerShell {0}.{1}. Execute o script na versão apropriada do PowerShell.
UnsupportedHost                           = O guião não suporta a execução através do {0}.
Win10TweakerWarning                       = Probabilmente il tuo sistema operativo è stato infettato tramite la backdoor Win 10 Tweaker.
TweakerWarning                            = A estabilidade do sistema operacional Windows pode ter sido comprometida pela utilização do {0}. Reinstale o Windows usando apenas uma imagem ISO genuína.
Bin                                       = Não há arquivos na pasta "{0}". Faça o download do arquivo novamente.
RebootPending                             = O PC está esperando para ser reiniciado.
UnsupportedRelease                        = Foi encontrada uma nova versão do script. Use somente o Sophia Script mais recente.
KeyboardArrows                            = Use as teclas de seta {0} e {1} do teclado para selecionar sua resposta
CustomizationWarning                      = Você personalizou todas as funções no arquivo de predefinição {0} antes de executar o Sophia Script?
WindowsComponentBroken                    = {0} quebrado ou removido do sistema operativo. Reinstale o Windows usando apenas uma imagem ISO genuína.
ControlledFolderAccessDisabled            = Acesso controlado a pasta desativada.
InitialActionsCheckFailed                 = A função InitialActions não pode ser carregada do arquivo predefinido {0}. Verifique o arquivo predefinido e tente novamente.
ScheduledTasks                            = Tarefas agendadas
OneDriveUninstalling                      = Desinstalar OneDrive...
OneDriveInstalling                        = Instalar o OneDrive...
OneDriveDownloading                       = Baixando OneDrive...
OneDriveWarning                           = A função "WinPrtScrFolder -Desktop" será aplicada somente se o usuário tiver configurado o script para remover o OneDrive (ou se o OneDrive já tiver sido removido).\nCaso contrário, a funcionalidade de backup para as pastas "Desktop" e "Pictures" no OneDrive será interrompida.
WindowsFeaturesTitle                      = Recursos do Windows
OptionalFeaturesTitle                     = Recursos opcionais
EnableHardwareVT                          = Habilitar virtualização em UEFI.
UserShellFolderNotEmpty                   = Alguns arquivos deixados na pasta "{0}". Movê-los manualmente para um novo local.
UserFolderLocationMove                    = Você não deve alterar o local da pasta do usuário para a raiz da unidade C.
DriveSelect                               = Selecione a unidade dentro da raiz da qual a pasta "{0}" será criada.
CurrentUserFolderLocation                 = A localização actual da pasta "{0}": "{1}".
UserFolderRequest                         = Gostaria de alterar a localização da pasta "{0}"?
UserDefaultFolder                         = Gostaria de alterar a localização da pasta "{0}" para o valor padrão?
ReservedStorageIsInUse                    = Esta operação não é suportada quando o armazenamento reservada está em uso\nFavor executar novamente a função "{0}" após o reinício do PC.
ShortcutPinning                           = O atalho "{0}" está sendo fixado no Iniciar...
UninstallUWPForAll                        = Para todos os usuários...
UWPAppsTitle                              = Apps UWP
HEVCDownloading                           = Baixando HEVC Vídeo Extensões de Dispositivo Fabricante...
GraphicsPerformanceTitle                  = Gostaria de definir a configuração de performance gráfica de um app de sua escolha para "alta performance"?
ScheduledTaskPresented                    = A função "{0}" já foi criada como "{1}".
CleanupTaskNotificationTitle              = Limpeza do Windows
CleanupTaskNotificationEvent              = Executar tarefa para limpar arquivos e atualizações não utilizados do Windows?
CleanupTaskDescription                    = Limpando o Windows arquivos não utilizados e atualizações usando o aplicativo de limpeza aplicativo de limpeza embutido no disco. A tarefa programada só pode ser executada se o usuário "{0}" estiver conectado ao sistema.
CleanupNotificationTaskDescription        = Pop-up lembrete de notificação sobre a limpeza do Windows arquivos não utilizados e actualizações. A tarefa programada só pode ser executada se o usuário "{0}" estiver conectado ao sistema.
SoftwareDistributionTaskNotificationEvent = O cache de atualização do Windows excluído com sucesso.
TempTaskNotificationEvent                 = Os arquivos da pasta Temp limpos com sucesso.
FolderTaskDescription                     = A limpeza da pasta "{0}". A tarefa programada só pode ser executada se o usuário "{0}" estiver conectado ao sistema.
EventViewerCustomViewName                 = Criação de processo
EventViewerCustomViewDescription          = Criação de processos e eventos de auditoria de linha de comando.
RestartWarning                            = Certifique-se de reiniciar o PC.
ErrorsLine                                = Linha
ErrorsMessage                             = Erros/Avisos
DialogBoxOpening                          = Exibindo a caixa de diálogo...
Disable                                   = Desativar
Enable                                    = Habilitar
AllFilesFilter                            = Todos os arquivos
FolderSelect                              = Escolha uma pasta
FilesWontBeMoved                          = Os arquivos não serão transferidos.
Install                                   = Instalar
NoData                                    = Nada à exibir.
RestartFunction                           = Favor reiniciar a função "{0}".
NoResponse                                = Uma conexão não pôde ser estabelecida com {0}.
Restore                                   = Restaurar
Run                                       = Executar
Skipped                                   = A função "{0}" foi ignorada.
GPOUpdate                                 = Actualização do GPO...
TelegramGroupTitle                        = Entre no grupo oficial do Telegram.
TelegramChannelTitle                      = Entre no canal oficial do Telegram.
DiscordChannelTitle                       = Entre no canal oficial do Discord.
Uninstall                                 = Desinstalar
'@
