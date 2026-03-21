.class public Lcom/termux/x11/input/TouchInputHandler$5;
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

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 511
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$5;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    iput-object p3, p0, Lcom/termux/x11/input/TouchInputHandler$5;->val$name:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    const-string p3, "what"

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$5;->val$name:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    iget-object p3, p0, Lcom/termux/x11/input/TouchInputHandler$5;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-static {p3}, Lcom/termux/x11/input/TouchInputHandler;->access$500(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/MainActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    return-void
.end method
