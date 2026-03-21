.class public Lcom/termux/x11/input/TouchInputHandler$3;
.super Landroid/content/Intent;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/util/function/BiConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/input/TouchInputHandler;


# direct methods
.method public constructor <init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 481
    .local p3, "arg1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$3;->this$0:Lcom/termux/x11/input/TouchInputHandler;

    invoke-direct {p0, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
