.class Lorg/bouncycastle/jce/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzj/b;


# static fields
.field private static g:Ljava/security/Permission;

.field private static h:Ljava/security/Permission;

.field private static i:Ljava/security/Permission;

.field private static j:Ljava/security/Permission;

.field private static k:Ljava/security/Permission;

.field private static l:Ljava/security/Permission;


# instance fields
.field private a:Ljava/lang/ThreadLocal;

.field private b:Ljava/lang/ThreadLocal;

.field private volatile c:Lek/d;

.field private volatile d:Ljava/lang/Object;

.field private volatile e:Ljava/util/Set;

.field private volatile f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->g:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->h:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->i:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->j:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "acceptableEcCurves"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->k:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "additionalEcParameters"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->l:Ljava/security/Permission;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/a;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/a;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/a;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/a;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/a;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lek/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/a;->c:Lek/d;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/a;->e:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const-string v1, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    sget-object p1, Lorg/bouncycastle/jce/provider/a;->g:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    instance-of p1, p2, Lek/d;

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2}, Lyj/b;->g(Ljava/security/spec/ECParameterSpec;)Lek/d;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, p2

    check-cast p1, Lek/d;

    :goto_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/a;->a:Ljava/lang/ThreadLocal;

    :goto_2
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto/16 :goto_6

    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/jce/provider/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    const-string v1, "ecImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_5

    sget-object p1, Lorg/bouncycastle/jce/provider/a;->h:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_5
    instance-of p1, p2, Lek/d;

    if-nez p1, :cond_7

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2}, Lyj/b;->g(Ljava/security/spec/ECParameterSpec;)Lek/d;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/a;->c:Lek/d;

    goto/16 :goto_6

    :cond_7
    :goto_3
    check-cast p2, Lek/d;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/a;->c:Lek/d;

    goto/16 :goto_6

    :cond_8
    const-string v1, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_9

    sget-object p1, Lorg/bouncycastle/jce/provider/a;->i:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_9
    instance-of p1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_b

    instance-of p1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_b

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not a valid DHParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/a;->b:Ljava/lang/ThreadLocal;

    if-nez p2, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    const-string v1, "DhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_e

    sget-object p1, Lorg/bouncycastle/jce/provider/a;->j:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_e
    instance-of p1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_10

    instance-of p1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_10

    if-nez p2, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_5
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/a;->d:Ljava/lang/Object;

    goto :goto_6

    :cond_11
    const-string v1, "acceptableEcCurves"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v0, :cond_12

    sget-object p1, Lorg/bouncycastle/jce/provider/a;->k:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_12
    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/a;->e:Ljava/util/Set;

    goto :goto_6

    :cond_13
    const-string v1, "additionalEcParameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    if-eqz v0, :cond_14

    sget-object p1, Lorg/bouncycastle/jce/provider/a;->l:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_14
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/a;->f:Ljava/util/Map;

    :cond_15
    :goto_6
    return-void
.end method
