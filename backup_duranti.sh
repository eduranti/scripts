  #!/bin/bash
  
  INICIO=`date +%d/%m/%Y-%H:%M:%S`
  LOG=/var/log/BKP.SRV.CONTABILIDADE.RSYNC.txt
  
  echo " " >> $LOG
  echo " " >> $LOG
  echo "| ------ ------ ------ ------ ------ ------ -----------"  >> $LOG
  echo "  Sincronizacao iniciada em $INICIO" >> $LOG
  
  
  rsync -Craz /home/duranti/teste.txt 192.168.1.1::backup/tche/
  FINAL=`date +%d/%m/%Y-%H:%M:%S`
  
  
  echo "  Sincronizacao Finalizada em $FINAL" >> $LOG
  echo "| ------ ------ ------ ------ ------ ------ -----------"  >> $LOG
  echo " " >> $LOG
  echo " " >> $LOG
