.class public Lcom/termux/x11/input/TouchInputHandler$4;
.super Landroid/content/Intent;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/input/TouchInputHandler;->extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;


# direct methods
.method public constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 499
    .local p3, "arg1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$4;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    const-string v0, "key"

    const-string v1, "value"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$4;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->access$500(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    return-void
.end method
