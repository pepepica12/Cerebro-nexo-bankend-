.class public abstract Lkotlin/jvm/internal/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field public static final EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

.field public static final factory:Lkotlin/jvm/internal/ReflectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    :try_start_0
    const-string v0, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/ReflectionFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :goto_0
    goto :goto_1

    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v1, 0x0

    .restart local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_1

    .line 31
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/InstantiationException;
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/InstantiationException;
    .restart local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_0

    .line 30
    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_0

    .line 29
    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_0

    .line 34
    :goto_1
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_2

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/ReflectionFactory;

    invoke-direct {v0}, Lkotlin/jvm/internal/ReflectionFactory;-><init>()V

    :goto_2
    sput-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 39
    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/reflect/KClass;

    sput-object v0, Lkotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

    return-void
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;

    .line 60
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method
