.class public final synthetic Lcom/termux/shared/termux/extrakeys/ExtraKeyButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton$$ExternalSyntheticLambda0;->f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton$$ExternalSyntheticLambda0;->f$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->$r8$lambda$UHVlrjAaUsBOsVRfbOhCVwroxlw(Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
