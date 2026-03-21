.class public abstract synthetic Landroidx/savedstate/SavedStateWriterKt__SavedStateWriter_androidKt;
.super Ljava/lang/Object;
.source "SavedStateWriter.android.kt"


# direct methods
.method public static final toArrayListUnsafe(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this$toArrayListUnsafe"    # Ljava/util/Collection;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method
