; NOTE: Assertions have been autogenerated by utils/update_mir_test_checks.py
; RUN: llc -verify-machineinstrs -stop-before=ppc-vsx-copy -vec-extabi \
; RUN:     -mcpu=pwr7  -mtriple powerpc-ibm-aix-xcoff < %s | \
; RUN: FileCheck --check-prefix=32BIT %s

; RUN: llc -verify-machineinstrs -stop-before=ppc-vsx-copy -vec-extabi \
; RUN:     -mcpu=pwr7  -mtriple powerpc64-ibm-aix-xcoff < %s | \
; RUN: FileCheck --check-prefix=64BIT %s

define <4 x i32> @caller() {
  ; 32BIT-LABEL: name: caller
  ; 32BIT: bb.0.entry:
  ; 32BIT:   ADJCALLSTACKDOWN 176, 0, implicit-def dead $r1, implicit $r1
  ; 32BIT:   [[LWZtoc:%[0-9]+]]:gprc = LWZtoc %const.0, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI:%[0-9]+]]:gprc = LI 48
  ; 32BIT:   STXVW4X killed [[LXVW4X]], $r1, killed [[LI]] :: (store 16)
  ; 32BIT:   [[LWZtoc1:%[0-9]+]]:gprc = LWZtoc %const.1, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X1:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc1]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI1:%[0-9]+]]:gprc = LI 32
  ; 32BIT:   STXVW4X killed [[LXVW4X1]], $r1, killed [[LI1]] :: (store 16)
  ; 32BIT:   [[LWZtoc2:%[0-9]+]]:gprc = LWZtoc %const.2, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X2:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc2]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI2:%[0-9]+]]:gprc = LI 160
  ; 32BIT:   STXVW4X killed [[LXVW4X2]], $r1, killed [[LI2]] :: (store 16)
  ; 32BIT:   [[LWZtoc3:%[0-9]+]]:gprc = LWZtoc %const.3, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X3:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc3]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI3:%[0-9]+]]:gprc = LI 144
  ; 32BIT:   STXVW4X killed [[LXVW4X3]], $r1, killed [[LI3]] :: (store 16)
  ; 32BIT:   [[LWZtoc4:%[0-9]+]]:gprc = LWZtoc %const.4, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X4:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc4]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI4:%[0-9]+]]:gprc = LI 128
  ; 32BIT:   STXVW4X killed [[LXVW4X4]], $r1, killed [[LI4]] :: (store 16)
  ; 32BIT:   [[LWZtoc5:%[0-9]+]]:gprc = LWZtoc %const.5, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X5:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc5]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI5:%[0-9]+]]:gprc = LI 112
  ; 32BIT:   STXVW4X killed [[LXVW4X5]], $r1, killed [[LI5]] :: (store 16)
  ; 32BIT:   [[LWZtoc6:%[0-9]+]]:gprc = LWZtoc %const.6, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X6:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc6]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI6:%[0-9]+]]:gprc = LI 96
  ; 32BIT:   STXVW4X killed [[LXVW4X6]], $r1, killed [[LI6]] :: (store 16)
  ; 32BIT:   [[LWZtoc7:%[0-9]+]]:gprc = LWZtoc %const.7, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X7:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc7]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI7:%[0-9]+]]:gprc = LI 80
  ; 32BIT:   STXVW4X killed [[LXVW4X7]], $r1, killed [[LI7]] :: (store 16)
  ; 32BIT:   [[LWZtoc8:%[0-9]+]]:gprc = LWZtoc %const.8, $r2 :: (load 4 from got)
  ; 32BIT:   [[LXVW4X8:%[0-9]+]]:vsrc = LXVW4X $zero, killed [[LWZtoc8]] :: (load 16 from constant-pool)
  ; 32BIT:   [[LI8:%[0-9]+]]:gprc = LI 64
  ; 32BIT:   STXVW4X killed [[LXVW4X8]], $r1, killed [[LI8]] :: (store 16)
  ; 32BIT:   [[LWZ:%[0-9]+]]:gprc = LWZ 52, $r1 :: (load 4)
  ; 32BIT:   [[LWZ1:%[0-9]+]]:gprc = LWZ 48, $r1 :: (load 4)
  ; 32BIT:   [[LWZ2:%[0-9]+]]:gprc = LWZ 44, $r1 :: (load 4)
  ; 32BIT:   [[LWZ3:%[0-9]+]]:gprc = LWZ 40, $r1 :: (load 4)
  ; 32BIT:   [[LWZ4:%[0-9]+]]:gprc = LWZ 36, $r1 :: (load 4)
  ; 32BIT:   [[LWZ5:%[0-9]+]]:gprc = LWZ 32, $r1 :: (load 4)
  ; 32BIT:   [[LI9:%[0-9]+]]:gprc = LI 9
  ; 32BIT:   $r3 = COPY [[LI9]]
  ; 32BIT:   $r5 = COPY [[LWZ5]]
  ; 32BIT:   $r6 = COPY [[LWZ4]]
  ; 32BIT:   $r7 = COPY [[LWZ3]]
  ; 32BIT:   $r8 = COPY [[LWZ2]]
  ; 32BIT:   $r9 = COPY [[LWZ1]]
  ; 32BIT:   $r10 = COPY [[LWZ]]
  ; 32BIT:   BL_NOP <mcsymbol .callee[PR]>, csr_aix32_altivec, implicit-def dead $lr, implicit $rm, implicit $r3, implicit $r5, implicit $r6, implicit $r7, implicit $r8, implicit $r9, implicit $r10, implicit $r2, implicit-def $r1, implicit-def $v2
  ; 32BIT:   ADJCALLSTACKUP 176, 0, implicit-def dead $r1, implicit $r1
  ; 32BIT:   [[COPY:%[0-9]+]]:vsrc = COPY $v2
  ; 32BIT:   $v2 = COPY [[COPY]]
  ; 32BIT:   BLR implicit $lr, implicit $rm, implicit $v2

  ; 64BIT-LABEL: name: caller
  ; 64BIT: bb.0.entry:
  ; 64BIT:   ADJCALLSTACKDOWN 208, 0, implicit-def dead $r1, implicit $r1
  ; 64BIT:   [[LDtocCPT:%[0-9]+]]:g8rc = LDtocCPT %const.0, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_:%[0-9]+]]:g8rc = LI8 96
  ; 64BIT:   STXVW4X killed [[LXVW4X]], $x1, killed [[LI8_]] :: (store 16)
  ; 64BIT:   [[LDtocCPT1:%[0-9]+]]:g8rc = LDtocCPT %const.1, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X1:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT1]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_1:%[0-9]+]]:g8rc = LI8 80
  ; 64BIT:   STXVW4X killed [[LXVW4X1]], $x1, killed [[LI8_1]] :: (store 16)
  ; 64BIT:   [[LDtocCPT2:%[0-9]+]]:g8rc = LDtocCPT %const.2, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X2:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT2]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_2:%[0-9]+]]:g8rc = LI8 64
  ; 64BIT:   STXVW4X killed [[LXVW4X2]], $x1, killed [[LI8_2]] :: (store 16)
  ; 64BIT:   [[LDtocCPT3:%[0-9]+]]:g8rc = LDtocCPT %const.3, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X3:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT3]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_3:%[0-9]+]]:g8rc = LI8 192
  ; 64BIT:   STXVW4X killed [[LXVW4X3]], $x1, killed [[LI8_3]] :: (store 16)
  ; 64BIT:   [[LDtocCPT4:%[0-9]+]]:g8rc = LDtocCPT %const.4, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X4:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT4]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_4:%[0-9]+]]:g8rc = LI8 176
  ; 64BIT:   STXVW4X killed [[LXVW4X4]], $x1, killed [[LI8_4]] :: (store 16)
  ; 64BIT:   [[LDtocCPT5:%[0-9]+]]:g8rc = LDtocCPT %const.5, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X5:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT5]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_5:%[0-9]+]]:g8rc = LI8 160
  ; 64BIT:   STXVW4X killed [[LXVW4X5]], $x1, killed [[LI8_5]] :: (store 16)
  ; 64BIT:   [[LDtocCPT6:%[0-9]+]]:g8rc = LDtocCPT %const.6, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X6:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT6]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_6:%[0-9]+]]:g8rc = LI8 144
  ; 64BIT:   STXVW4X killed [[LXVW4X6]], $x1, killed [[LI8_6]] :: (store 16)
  ; 64BIT:   [[LDtocCPT7:%[0-9]+]]:g8rc = LDtocCPT %const.7, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X7:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT7]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_7:%[0-9]+]]:g8rc = LI8 128
  ; 64BIT:   STXVW4X killed [[LXVW4X7]], $x1, killed [[LI8_7]] :: (store 16)
  ; 64BIT:   [[LDtocCPT8:%[0-9]+]]:g8rc = LDtocCPT %const.8, $x2 :: (load 8 from got)
  ; 64BIT:   [[LXVW4X8:%[0-9]+]]:vsrc = LXVW4X $zero8, killed [[LDtocCPT8]] :: (load 16 from constant-pool)
  ; 64BIT:   [[LI8_8:%[0-9]+]]:g8rc = LI8 112
  ; 64BIT:   STXVW4X killed [[LXVW4X8]], $x1, killed [[LI8_8]] :: (store 16)
  ; 64BIT:   [[LD:%[0-9]+]]:g8rc = LD 104, $x1 :: (load 8)
  ; 64BIT:   [[LD1:%[0-9]+]]:g8rc = LD 96, $x1 :: (load 8)
  ; 64BIT:   [[LD2:%[0-9]+]]:g8rc = LD 88, $x1 :: (load 8)
  ; 64BIT:   [[LD3:%[0-9]+]]:g8rc = LD 80, $x1 :: (load 8)
  ; 64BIT:   [[LD4:%[0-9]+]]:g8rc = LD 72, $x1 :: (load 8)
  ; 64BIT:   [[LD5:%[0-9]+]]:g8rc = LD 64, $x1 :: (load 8)
  ; 64BIT:   [[LI8_9:%[0-9]+]]:g8rc = LI8 9
  ; 64BIT:   $x3 = COPY [[LI8_9]]
  ; 64BIT:   $x5 = COPY [[LD5]]
  ; 64BIT:   $x6 = COPY [[LD4]]
  ; 64BIT:   $x7 = COPY [[LD3]]
  ; 64BIT:   $x8 = COPY [[LD2]]
  ; 64BIT:   $x9 = COPY [[LD1]]
  ; 64BIT:   $x10 = COPY [[LD]]
  ; 64BIT:   BL8_NOP <mcsymbol .callee[PR]>, csr_ppc64_altivec, implicit-def dead $lr8, implicit $rm, implicit $x3, implicit $x5, implicit $x6, implicit $x7, implicit $x8, implicit $x9, implicit $x10, implicit $x2, implicit-def $r1, implicit-def $v2
  ; 64BIT:   ADJCALLSTACKUP 208, 0, implicit-def dead $r1, implicit $r1
  ; 64BIT:   [[COPY:%[0-9]+]]:vsrc = COPY $v2
  ; 64BIT:   $v2 = COPY [[COPY]]
  ; 64BIT:   BLR8 implicit $lr8, implicit $rm, implicit $v2
  entry:
    %call = tail call <4 x i32> (i32, ...) @callee(i32 9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, <4 x i32> <i32 16, i32 17, i32 18, i32 19>, <4 x i32> <i32 20, i32 21, i32 22, i32 23>, <4 x i32> <i32 24, i32 25, i32 26, i32 27>, <4 x i32> <i32 28, i32 29, i32 30, i32 31>, <4 x i32> <i32 32, i32 33, i32 34, i32 35>)
      ret <4 x i32> %call
}

declare <4 x i32> @callee(i32, ...)