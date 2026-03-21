.class public Lcom/termux/x11/LoriePreferences$2;
.super Landroid/database/ContentObserver;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/LoriePreferences;

.field public final updateLayout:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$Xjwq_gZVXHL3cgZUiA2h-m3UTsA(Lcom/termux/x11/LoriePreferences$2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences$2;->lambda$$0()V

    return-void
.end method

.method public constructor <init>(Lcom/termux/x11/LoriePreferences;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$2;->this$0:Lcom/termux/x11/LoriePreferences;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 96
    new-instance v0, Lcom/termux/x11/LoriePreferences$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/x11/LoriePreferences$2$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/LoriePreferences$2;)V

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences$2;->updateLayout:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic lambda$$0()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$2;->this$0:Lcom/termux/x11/LoriePreferences;

    invoke-static {v0}, Lcom/termux/x11/LoriePreferences;->access$000(Lcom/termux/x11/LoriePreferences;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 100
    sget-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$2;->updateLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    sget-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$2;->updateLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method
