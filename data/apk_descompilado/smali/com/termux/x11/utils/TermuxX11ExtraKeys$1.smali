.class public Lcom/termux/x11/utils/TermuxX11ExtraKeys$1;
.super Landroid/content/Intent;
.source "TermuxX11ExtraKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/utils/TermuxX11ExtraKeys;->onLorieExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/utils/TermuxX11ExtraKeys;


# direct methods
.method public constructor <init>(Lcom/termux/x11/utils/TermuxX11ExtraKeys;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/utils/TermuxX11ExtraKeys;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 170
    .local p3, "arg1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys$1;->this$0:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-direct {p0, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.termux.x11.start_preferences_activity"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
