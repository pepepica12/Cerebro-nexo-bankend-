.class public abstract Landroidx/lifecycle/viewmodel/internal/CanonicalName_jvmKt;
.super Ljava/lang/Object;
.source "CanonicalName.jvm.kt"


# direct methods
.method public static final getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$canonicalName"    # Lkotlin/reflect/KClass;

    .line 22
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
