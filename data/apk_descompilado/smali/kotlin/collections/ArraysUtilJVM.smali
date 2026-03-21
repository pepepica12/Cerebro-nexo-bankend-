.class public abstract Lkotlin/collections/ArraysUtilJVM;
.super Ljava/lang/Object;
.source "ArraysUtilJVM.java"


# direct methods
.method public static asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 13
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
