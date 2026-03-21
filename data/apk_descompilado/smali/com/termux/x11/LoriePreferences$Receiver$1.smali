.class public Lcom/termux/x11/LoriePreferences$Receiver$1;
.super Lcom/termux/x11/IRemoteCmdImterface$Stub;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences$Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$uKXHIUgxvnF4Kcv-B5ijFP3h05c(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/x11/LoriePreferences$Receiver$1;->lambda$exit$0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 638
    invoke-direct {p0}, Lcom/termux/x11/IRemoteCmdImterface$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$exit$0(I)V
    .locals 0
    .param p0, "code"    # I

    .line 642
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public exit(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "output"    # Ljava/lang/String;

    .line 641
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 642
    sget-object v0, Lcom/termux/x11/CmdEntryPoint;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/LoriePreferences$Receiver$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/termux/x11/LoriePreferences$Receiver$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    return-void
.end method
