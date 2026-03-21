.class public final synthetic Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

.field public final synthetic f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

.field public final synthetic f$2:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;->f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;->f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    iput-object p3, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;->f$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;->f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;->f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    iget-object v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;->f$2:Landroid/widget/Button;

    invoke-static {v0, v1, v2, p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->$r8$lambda$mA5ioZYJnoXN8gokForBypG-85U(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
