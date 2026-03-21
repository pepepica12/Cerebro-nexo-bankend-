.class public Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$2;
.super Landroid/content/Intent;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

.field public final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 449
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$2;->this$0:Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    iput-object p3, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$2;->val$key:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    const-string p3, "key"

    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$2;->val$key:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string p3, "fromBroadcast"

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    const-string p3, "com.termux.x11"

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    return-void
.end method
