.class public final synthetic Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

.field public final synthetic f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/utils/TermuxX11ExtraKeys;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    iput-object p2, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;->f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    iget-object v1, p0, Lcom/termux/x11/utils/TermuxX11ExtraKeys$$ExternalSyntheticLambda0;->f$1:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    invoke-static {v0, v1}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->$r8$lambda$dM30szqTfuvhCpV1qORaxlHLsdQ(Lcom/termux/x11/utils/TermuxX11ExtraKeys;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V

    return-void
.end method
