.class public Lcom/termux/x11/LoriePreferences$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# static fields
.field public static final iface:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$Mol9tD3sb_bEAjiPEijvOfH5hYg()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/termux/x11/LoriePreferences$Receiver;->lambda$main$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$cLWNXKFoldK_H5FMdZq56Kgqh1s(Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/x11/LoriePreferences$Receiver;->lambda$main$0(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 638
    new-instance v0, Lcom/termux/x11/LoriePreferences$Receiver$1;

    invoke-direct {v0}, Lcom/termux/x11/LoriePreferences$Receiver$1;-><init>()V

    sput-object v0, Lcom/termux/x11/LoriePreferences$Receiver;->iface:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 490
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 491
    return-void
.end method

.method public static help()V
    .locals 2

    .line 647
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "termux-x11-preference [list] {key:value} [{key2:value2}]..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 649
    return-void
.end method

.method public static synthetic lambda$main$0(Landroid/content/Intent;)V
    .locals 0
    .param p0, "i"    # Landroid/content/Intent;

    .line 696
    invoke-static {p0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$main$1()V
    .locals 2

    .line 698
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Failed to obtain response from app."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 699
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 700
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 654
    const-string v0, "LoriePreferences$Receiver"

    const-string v1, "commit 6d627520b4717cdea1ed1530e6d063be7537cc8b"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 657
    .local v1, "in":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.termux.x11.CHANGE_PREFERENCE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .local v2, "i":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 659
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 661
    .local v4, "inputIsFile":Z
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 662
    sget-object v6, Lcom/termux/x11/LoriePreferences$Receiver;->iface:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 663
    const-string v6, "com.termux.x11"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 665
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v6

    const/16 v7, 0x7d0

    if-ne v6, v7, :cond_1

    .line 666
    :cond_0
    const/high16 v6, 0x400000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 668
    :cond_1
    if-eqz v4, :cond_5

    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_5

    .line 669
    new-instance v6, Ljava/util/Scanner;

    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 672
    .local v6, "scanner":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 673
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, "line":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 675
    invoke-static {}, Lcom/termux/x11/LoriePreferences$Receiver;->help()V

    .line 677
    :cond_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 678
    .local v8, "v":[Ljava/lang/String;
    aget-object v9, v8, v0

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    aget-object v9, v8, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 679
    aget-object v9, v8, v0

    aget-object v11, v8, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v9, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 680
    :cond_3
    aget-object v9, v8, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    aget-object v9, v8, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 681
    aget-object v9, v8, v5

    aget-object v10, v8, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 682
    :cond_4
    aget-object v9, v8, v0

    aget-object v10, v8, v5

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 686
    .end local v6    # "scanner":Ljava/util/Scanner;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "v":[Ljava/lang/String;
    :cond_5
    array-length v6, p0

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_8

    aget-object v8, p0, v7

    .line 687
    .local v8, "a":Ljava/lang/String;
    const-string v9, "list"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 688
    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 689
    :cond_6
    if-eqz v8, :cond_7

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 690
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 691
    .local v9, "v":[Ljava/lang/String;
    aget-object v10, v9, v0

    aget-object v11, v9, v5

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    .end local v9    # "v":[Ljava/lang/String;
    goto :goto_2

    .line 693
    :cond_7
    invoke-static {}, Lcom/termux/x11/LoriePreferences$Receiver;->help()V

    .line 686
    .end local v8    # "a":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 696
    :cond_8
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/termux/x11/LoriePreferences$Receiver$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/termux/x11/LoriePreferences$Receiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/termux/x11/LoriePreferences$Receiver$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/termux/x11/LoriePreferences$Receiver$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v6, 0x1388

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 701
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 702
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 502
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 503
    .local v4, "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 504
    .local v5, "ibinder":Landroid/os/IBinder;
    :goto_1
    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/termux/x11/IRemoteCmdImterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/termux/x11/IRemoteCmdImterface;

    move-result-object v0

    :cond_2
    move-object v6, v0

    .line 507
    .local v6, "remote":Lcom/termux/x11/IRemoteCmdImterface;
    if-eqz v3, :cond_1a

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 508
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v10, :cond_3

    :try_start_1
    new-instance v10, Lcom/termux/x11/Prefs;

    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/termux/x11/Prefs;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 619
    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    goto/16 :goto_10

    .line 508
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v10, :cond_4

    :try_start_3
    invoke-static {}, Lcom/termux/x11/LoriePreferences;->access$100()Lcom/termux/x11/Prefs;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_4
    :try_start_4
    new-instance v10, Lcom/termux/x11/Prefs;

    invoke-direct {v10, v2}, Lcom/termux/x11/Prefs;-><init>(Landroid/content/Context;)V

    :goto_2
    nop

    .line 509
    .local v10, "p":Lcom/termux/x11/Prefs;
    const-string v11, "list"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-class v12, [Ljava/lang/String;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v15, ""

    if-eqz v11, :cond_b

    .line 510
    nop

    .line 511
    .local v15, "result":Ljava/lang/String;
    :try_start_5
    iget-object v11, v10, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v17, v16

    .line 512
    .local v17, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    move-object/from16 v9, v17

    const/16 v16, 0x1

    .end local v17    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    .local v9, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    :try_start_6
    iget-object v0, v9, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    const-class v8, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-string v7, "\"\n"

    move-object/from16 v19, v4

    .end local v4    # "bundle":Landroid/os/Bundle;
    .local v19, "bundle":Landroid/os/Bundle;
    const-string v4, "\"=\""

    move-object/from16 v20, v5

    .end local v5    # "ibinder":Landroid/os/IBinder;
    .local v20, "ibinder":Landroid/os/IBinder;
    const-string v5, "\""

    if-ne v0, v8, :cond_5

    .line 513
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asString()Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local v15    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_5

    .line 619
    .end local v0    # "result":Ljava/lang/String;
    .end local v9    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    .end local v10    # "p":Lcom/termux/x11/Prefs;
    :catch_1
    move-exception v0

    goto/16 :goto_10

    .line 514
    .restart local v9    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    .restart local v10    # "p":Lcom/termux/x11/Prefs;
    .restart local v15    # "result":Ljava/lang/String;
    :cond_5
    iget-object v0, v9, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    if-ne v0, v14, :cond_6

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asInt()Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local v15    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto/16 :goto_5

    .line 516
    .end local v0    # "result":Ljava/lang/String;
    .restart local v15    # "result":Ljava/lang/String;
    :cond_6
    iget-object v0, v9, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    if-ne v0, v13, :cond_7

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asBoolean()Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local v15    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_5

    .line 518
    .end local v0    # "result":Ljava/lang/String;
    .restart local v15    # "result":Ljava/lang/String;
    :cond_7
    iget-object v0, v9, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    if-ne v0, v12, :cond_9

    .line 519
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v8

    invoke-static {v8}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$200(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "entries":[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v21

    move-object/from16 v22, v0

    .end local v0    # "entries":[Ljava/lang/String;
    .local v22, "entries":[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$300(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "values":[Ljava/lang/String;
    invoke-virtual {v9}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v8

    .line 522
    .local v8, "value":Ljava/lang/String;
    move-object/from16 v21, v0

    .end local v0    # "values":[Ljava/lang/String;
    .local v21, "values":[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 523
    .local v0, "index":I
    move-object/from16 v23, v8

    const/4 v8, -0x1

    .end local v8    # "value":Ljava/lang/String;
    .local v23, "value":Ljava/lang/String;
    if-eq v0, v8, :cond_8

    .line 524
    aget-object v8, v22, v0

    .end local v23    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    goto :goto_4

    .line 523
    .end local v8    # "value":Ljava/lang/String;
    .restart local v23    # "value":Ljava/lang/String;
    :cond_8
    move-object/from16 v8, v23

    .line 525
    .end local v23    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_4
    move/from16 v23, v0

    .end local v0    # "index":I
    .local v23, "index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 527
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    .end local v21    # "values":[Ljava/lang/String;
    .end local v22    # "entries":[Ljava/lang/String;
    .end local v23    # "index":I
    :cond_9
    :goto_5
    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto/16 :goto_3

    .line 619
    .end local v10    # "p":Lcom/termux/x11/Prefs;
    .end local v15    # "result":Ljava/lang/String;
    .end local v19    # "bundle":Landroid/os/Bundle;
    .end local v20    # "ibinder":Landroid/os/IBinder;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "ibinder":Landroid/os/IBinder;
    :catch_2
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v19    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "ibinder":Landroid/os/IBinder;
    :goto_6
    goto/16 :goto_10

    .end local v19    # "bundle":Landroid/os/Bundle;
    .end local v20    # "ibinder":Landroid/os/IBinder;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "ibinder":Landroid/os/IBinder;
    :catch_3
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const/16 v16, 0x1

    goto :goto_6

    .line 529
    .restart local v10    # "p":Lcom/termux/x11/Prefs;
    .restart local v15    # "result":Ljava/lang/String;
    :cond_a
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const/16 v16, 0x1

    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v19    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "ibinder":Landroid/os/IBinder;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v15, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v1, v6, v4, v5, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 530
    return-void

    .line 533
    .end local v15    # "result":Ljava/lang/String;
    .end local v19    # "bundle":Landroid/os/Bundle;
    .end local v20    # "ibinder":Landroid/os/IBinder;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "ibinder":Landroid/os/IBinder;
    :cond_b
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const/16 v16, 0x1

    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v19    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "ibinder":Landroid/os/IBinder;
    invoke-virtual {v10}, Lcom/termux/x11/LoriePreferences$PrefsProto;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v4, v0

    .line 534
    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 535
    .local v5, "key":Ljava/lang/String;
    if-nez v5, :cond_c

    .line 536
    goto :goto_7

    .line 537
    :cond_c
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 538
    .local v7, "newValue":Ljava/lang/String;
    if-nez v7, :cond_d

    .line 539
    goto :goto_7

    .line 541
    :cond_d
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string v9, "displayResolutionCustom"

    const-string v11, "enableAccessibilityServiceAutomatically"

    sparse-switch v8, :sswitch_data_0

    :cond_e
    goto :goto_8

    :sswitch_0
    :try_start_8
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    move/from16 v8, v16

    goto :goto_9

    :sswitch_1
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    goto :goto_9

    :sswitch_2
    const-string v8, "extra_keys_config"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v8, :cond_e

    const/4 v8, 0x2

    goto :goto_9

    :goto_8
    const/4 v8, -0x1

    :goto_9
    move-object/from16 v21, v0

    const-string v0, "true"

    packed-switch v8, :pswitch_data_0

    .line 574
    :try_start_9
    iget-object v8, v10, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 575
    .local v8, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    if-eqz v8, :cond_f

    iget-object v9, v8, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    if-ne v9, v13, :cond_f

    .line 576
    invoke-virtual {v0, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 577
    const-string v9, "showAdditionalKbd"

    invoke-virtual {v9, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual {v0, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 578
    const-string v0, "additionalKbdVisible"

    move/from16 v9, v16

    invoke-interface {v4, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_d

    .line 579
    :cond_f
    if-eqz v8, :cond_10

    iget-object v0, v8, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    if-ne v0, v14, :cond_10

    .line 581
    :try_start_a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 585
    goto/16 :goto_d

    .line 582
    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    :goto_a
    nop

    .line 583
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    :try_start_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": failed to parse integer: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12, v11, v9}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 584
    return-void

    .line 586
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_10
    if-eqz v8, :cond_15

    iget-object v0, v8, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    if-ne v0, v12, :cond_15

    .line 587
    move-object v0, v8

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 588
    .local v0, "_p":Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getEntries()[Ljava/lang/String;

    move-result-object v9

    .line 589
    .local v9, "entries":[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getValues()[Ljava/lang/String;

    move-result-object v11

    .line 590
    .local v11, "values":[Ljava/lang/String;
    move-object/from16 v22, v0

    .end local v0    # "_p":Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    .local v22, "_p":Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 592
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_11

    invoke-static/range {v22 .. v22}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$200(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v3

    move/from16 v23, v0

    .end local v0    # "index":I
    .restart local v23    # "index":I
    invoke-static/range {v22 .. v22}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$300(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v0

    if-eq v3, v0, :cond_12

    .line 593
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .end local v23    # "index":I
    .restart local v0    # "index":I
    goto :goto_b

    .line 592
    :cond_11
    move/from16 v23, v0

    .line 595
    .end local v0    # "index":I
    .restart local v23    # "index":I
    :cond_12
    move/from16 v0, v23

    .end local v23    # "index":I
    .restart local v0    # "index":I
    :goto_b
    const/4 v3, -0x1

    if-eq v0, v3, :cond_13

    .line 596
    aget-object v3, v11, v0

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 597
    goto/16 :goto_d

    .line 600
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": can not be set to \""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\", possible options are "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$200(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v12

    invoke-static/range {v22 .. v22}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->access$300(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I

    move-result v13

    if-eq v12, v13, :cond_14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " or "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_14
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12, v12, v3}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 601
    return-void

    .line 603
    .end local v0    # "index":I
    .end local v9    # "entries":[Ljava/lang/String;
    .end local v11    # "values":[Ljava/lang/String;
    .end local v22    # "_p":Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": unrecognised option"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12, v11, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 604
    return-void

    .line 570
    .end local v8    # "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    :pswitch_0
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 571
    goto :goto_d

    .line 556
    :pswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 557
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/termux/x11/utils/KeyInterceptor;->shutdown(Z)V

    goto :goto_c

    .line 558
    :cond_16
    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_17

    .line 559
    const-string v0, "Permission denied.\nAndroid requires WRITE_SECURE_SETTINGS permission to change `enableAccessibilityServiceAutomatically` setting.\nPlease, launch this command using ADB:\nadb shell pm grant com.termux.x11 android.permission.WRITE_SECURE_SETTINGS"

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12, v12, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 563
    return-void

    .line 566
    :cond_17
    :goto_c
    invoke-virtual {v0, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-interface {v4, v11, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 567
    goto :goto_d

    .line 544
    :pswitch_2
    :try_start_c
    const-string v0, "x"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "resolution":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v3, v0, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 546
    const/16 v16, 0x1

    aget-object v3, v0, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 550
    .end local v0    # "resolution":[Ljava/lang/String;
    nop

    .line 552
    :try_start_d
    invoke-interface {v4, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    nop

    .line 609
    :cond_18
    :goto_d
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.termux.x11.ACTION_PREFERENCES_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "intent0":Landroid/content/Intent;
    const-string v3, "key"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v3, "fromBroadcast"

    const/4 v9, 0x1

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    const-string v3, "com.termux.x11"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 614
    .end local v0    # "intent0":Landroid/content/Intent;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "newValue":Ljava/lang/String;
    move-object/from16 v3, p2

    move-object/from16 v0, v21

    const/16 v16, 0x1

    goto/16 :goto_7

    .line 547
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "newValue":Ljava/lang/String;
    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    :goto_e
    nop

    .line 548
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const-string v3, "displayResolutionCustom: Wrong resolution format."

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12, v12, v3}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 549
    return-void

    .line 615
    .end local v0    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "newValue":Ljava/lang/String;
    :cond_19
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_f

    .line 507
    .end local v10    # "p":Lcom/termux/x11/Prefs;
    .end local v19    # "bundle":Landroid/os/Bundle;
    .end local v20    # "ibinder":Landroid/os/IBinder;
    .local v4, "bundle":Landroid/os/Bundle;
    .local v5, "ibinder":Landroid/os/IBinder;
    :cond_1a
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 618
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ibinder":Landroid/os/IBinder;
    .restart local v19    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "ibinder":Landroid/os/IBinder;
    :goto_f
    const-string v0, "Done"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v6, v4, v5, v0}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 621
    goto :goto_11

    .line 619
    :goto_10
    nop

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12, v11, v3}, Lcom/termux/x11/LoriePreferences$Receiver;->sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e1a2dc2 -> :sswitch_2
        0x2846581f -> :sswitch_1
        0x5ad03019 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "myContext"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;

    .line 495
    invoke-super {p0, p1, p2}, Landroid/content/BroadcastReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public sendResponse(Lcom/termux/x11/IRemoteCmdImterface;IILjava/lang/String;)V
    .locals 3
    .param p1, "remote"    # Lcom/termux/x11/IRemoteCmdImterface;
    .param p2, "status"    # I
    .param p3, "oldStatus"    # I
    .param p4, "text"    # Ljava/lang/String;

    .line 625
    if-eqz p1, :cond_0

    .line 627
    :try_start_0
    invoke-interface {p1, p2, p4}, Lcom/termux/x11/IRemoteCmdImterface;->exit(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_0
    goto :goto_1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "LoriePreferences"

    const-string v2, "Failed to send response to commandline proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {p0, p3}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 633
    invoke-virtual {p0, p4}, Landroid/content/BroadcastReceiver;->setResultData(Ljava/lang/String;)V

    .line 635
    :cond_1
    :goto_1
    return-void
.end method
