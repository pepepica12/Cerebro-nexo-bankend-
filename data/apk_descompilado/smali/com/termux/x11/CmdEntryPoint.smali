.class public Lcom/termux/x11/CmdEntryPoint;
.super Lcom/termux/x11/ICmdEntryInterface$Stub;
.source "CmdEntryPoint.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak",
        "UnsafeDynamicallyLoadedCode"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACTION_START:Ljava/lang/String; = "com.termux.x11.CmdEntryPoint.ACTION_START"

.field public static ctx:Landroid/content/Context;

.field static final handler:Landroid/os/Handler;


# instance fields
.field private final intent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$H7taMm5RCngRqGMdlEvER9BHV7U(Lcom/termux/x11/CmdEntryPoint;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcastDelayed()V

    return-void
.end method

.method public static synthetic $r8$lambda$IG3W-phhykyvbQTncBEqNO8MALo(Lcom/termux/x11/CmdEntryPoint;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/termux/x11/CmdEntryPoint;->listenForConnections()V

    return-void
.end method

.method public static synthetic $r8$lambda$JYBlrnmBfMdumzkMOJOOojsrG9A([Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/x11/CmdEntryPoint;->lambda$main$0([Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 30
    const-string v0, "CmdEntryPoint"

    .line 178
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 179
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    goto :goto_1

    .line 182
    :cond_0
    :goto_0
    goto :goto_2

    .line 180
    :goto_1
    nop

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Something went wrong when preparing MainLooper"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    .line 184
    invoke-static {}, Lcom/termux/x11/CmdEntryPoint;->createContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/termux/x11/CmdEntryPoint;->ctx:Landroid/content/Context;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libXlorie.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "path":Ljava/lang/String;
    const-class v2, Lcom/termux/x11/CmdEntryPoint;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 188
    .local v2, "loader":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    goto :goto_3

    :cond_1
    move-object v4, v3

    .line 189
    .local v4, "res":Ljava/net/URL;
    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const-string v5, "file:"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "libPath":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x86

    if-eqz v3, :cond_3

    .line 192
    :try_start_1
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :goto_4
    goto :goto_5

    .line 193
    :catch_1
    move-exception v6

    .line 194
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to dlopen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Failed to load native library. Did you install the right apk? Try the universal one."

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 200
    :cond_3
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    if-nez v0, :cond_4

    .line 201
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Failed to acquire native library. Did you install the right apk? Try the universal one."

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 205
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "libPath":Ljava/lang/String;
    .end local v4    # "res":Ljava/net/URL;
    :cond_4
    :goto_5
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/termux/x11/ICmdEntryInterface$Stub;-><init>()V

    .line 35
    invoke-direct {p0}, Lcom/termux/x11/CmdEntryPoint;->createIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/CmdEntryPoint;->intent:Landroid/content/Intent;

    .line 49
    invoke-static {p1}, Lcom/termux/x11/CmdEntryPoint;->start([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/CmdEntryPoint;->spawnListeningThread()V

    .line 53
    invoke-direct {p0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcastDelayed()V

    .line 54
    return-void
.end method

.method private static native connected()Z
.end method

.method public static createContext()Landroid/content/Context;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi"
        }
    .end annotation

    .line 144
    const-string v0, "sun.misc.Unsafe"

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 146
    .local v1, "err":Ljava/io/PrintStream;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "theUnsafe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 147
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 148
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 151
    .local v3, "unsafe":Ljava/lang/Object;
    new-instance v4, Ljava/io/PrintStream;

    new-instance v5, Lcom/termux/x11/CmdEntryPoint$2;

    invoke-direct {v5}, Lcom/termux/x11/CmdEntryPoint$2;-><init>()V

    invoke-direct {v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 152
    const-string v4, "OLD_CONTEXT"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 153
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    goto :goto_0

    .line 165
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "unsafe":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 161
    :catch_0
    move-exception v0

    goto :goto_1

    .line 155
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "unsafe":Ljava/lang/Object;
    :cond_0
    nop

    .line 156
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "allocateInstance"

    const-class v5, Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 157
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v4, Landroid/app/ActivityThread;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 158
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    .line 159
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "unsafe":Ljava/lang/Object;
    .restart local v0    # "context":Landroid/content/Context;
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 166
    goto :goto_2

    .line 161
    .end local v0    # "context":Landroid/content/Context;
    :goto_1
    nop

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Context"

    const-string v3, "Failed to instantiate context:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const/4 v0, 0x0

    .local v0, "context":Landroid/content/Context;
    goto :goto_0

    .line 167
    :goto_2
    return-object v0

    .line 165
    .end local v0    # "context":Landroid/content/Context;
    :goto_3
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 166
    throw v0
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "PrivateApi"
        }
    .end annotation

    .line 58
    const-string v0, "TERMUX_X11_OVERRIDE_PACKAGE"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "targetPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    const-string v0, "com.termux.x11"

    .line 63
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 66
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.termux.x11.CmdEntryPoint.ACTION_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v2

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_2

    .line 71
    :cond_1
    const/high16 v2, 0x400000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    :cond_2
    return-object v3
.end method

.method private static synthetic lambda$main$0([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/termux/x11/CmdEntryPoint;

    invoke-direct {v0, p0}, Lcom/termux/x11/CmdEntryPoint;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private native listenForConnections()V
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 43
    const-string v0, "CmdEntryPoint"

    const-string v1, "commit 6d627520b4717cdea1ed1530e6d063be7537cc8b"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 46
    return-void
.end method

.method private sendBroadcast()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/termux/x11/CmdEntryPoint;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public static sendBroadcast(Landroid/content/Intent;)V
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;

    .line 82
    :try_start_0
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    move-object v7, p0

    goto/16 :goto_2

    .line 83
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    nop

    instance-of v0, v1, Ljava/lang/NullPointerException;

    const-string v2, "Broadcast"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "Context is null, falling back to manual broadcasting"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_0
    const-string v0, "Falling back to manual broadcasting, failed to broadcast intent through Context:"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v5, v0

    .line 94
    .local v5, "packageName":Ljava/lang/String;
    nop

    .line 98
    const/4 v3, 0x0

    :try_start_2
    const-class v0, Landroid/app/ActivityManager;

    const-string v4, "getService"

    new-array v6, v2, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .local v0, "am":Landroid/app/IActivityManager;
    move-object v3, v0

    goto :goto_1

    .line 101
    .end local v0    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 103
    .local v4, "e2":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getDefault"

    new-array v7, v2, [Ljava/lang/Class;

    .line 104
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v2, [Ljava/lang/Object;

    .line 105
    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 108
    .restart local v0    # "am":Landroid/app/IActivityManager;
    move-object v3, v0

    .line 111
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "e2":Ljava/lang/Exception;
    .local v3, "am":Landroid/app/IActivityManager;
    :goto_1
    if-eqz v3, :cond_1

    .line 112
    filled-new-array {p0}, [Landroid/content/Intent;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x50000000

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v4

    .line 116
    .local v4, "sender":Landroid/content/IIntentSender;
    :try_start_4
    const-class v0, Landroid/content/IIntentSender;

    const-string v6, "send"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v8, Landroid/content/Intent;

    const-class v9, Ljava/lang/String;

    const-class v10, Landroid/os/IBinder;

    const-class v11, Landroid/content/IIntentReceiver;

    const-class v12, Ljava/lang/String;

    const-class v13, Landroid/os/Bundle;

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Class;

    move-result-object v7

    .line 117
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v10, Lcom/termux/x11/CmdEntryPoint$1;

    invoke-direct {v10}, Lcom/termux/x11/CmdEntryPoint$1;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    .end local p0    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    :try_start_5
    filled-new-array/range {v6 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 123
    nop

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "am":Landroid/app/IActivityManager;
    .end local v4    # "sender":Landroid/content/IIntentSender;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_2
    return-void

    .line 121
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "sender":Landroid/content/IIntentSender;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .end local v7    # "intent":Landroid/content/Intent;
    .restart local p0    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object v7, p0

    move-object p0, v0

    .line 122
    .restart local v7    # "intent":Landroid/content/Intent;
    .local p0, "ex":Ljava/lang/Exception;
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 111
    .end local v4    # "sender":Landroid/content/IIntentSender;
    .end local v7    # "intent":Landroid/content/Intent;
    .local p0, "intent":Landroid/content/Intent;
    :cond_1
    move-object v7, p0

    .end local p0    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 106
    .end local v3    # "am":Landroid/app/IActivityManager;
    .end local v7    # "intent":Landroid/content/Intent;
    .local v4, "e2":Ljava/lang/Exception;
    .restart local p0    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v0

    move-object v7, p0

    move-object p0, v0

    .line 107
    .restart local v7    # "intent":Landroid/content/Intent;
    .local p0, "e3":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 92
    .end local v4    # "e2":Ljava/lang/Exception;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .local p0, "intent":Landroid/content/Intent;
    :catch_5
    move-exception v0

    move-object v7, p0

    move-object p0, v0

    .line 93
    .restart local v7    # "intent":Landroid/content/Intent;
    .local p0, "ex":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private sendBroadcastDelayed()V
    .locals 4

    .line 130
    invoke-static {}, Lcom/termux/x11/CmdEntryPoint;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/termux/x11/CmdEntryPoint;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/termux/x11/CmdEntryPoint;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    :cond_0
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/CmdEntryPoint;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method

.method public static native start([Ljava/lang/String;)Z
.end method


# virtual methods
.method public native getLogcatOutput()Landroid/os/ParcelFileDescriptor;
.end method

.method public native getXConnection()Landroid/os/ParcelFileDescriptor;
.end method

.method public spawnListeningThread()V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/x11/CmdEntryPoint$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/CmdEntryPoint;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 138
    return-void
.end method
