.class public final Lorg/bouncycastle/crypto/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lorg/bouncycastle/crypto/d$a;

.field public static final d:Lorg/bouncycastle/crypto/d$a;

.field public static final e:Lorg/bouncycastle/crypto/d$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/d$a;

    const-class v1, Lpj/i;

    const-string v2, "ecImplicitlyCA"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/d$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/d$a;->c:Lorg/bouncycastle/crypto/d$a;

    new-instance v0, Lorg/bouncycastle/crypto/d$a;

    const-class v1, Lvj/c;

    const-string v2, "dhDefaultParams"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/d$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/d$a;->d:Lorg/bouncycastle/crypto/d$a;

    new-instance v0, Lorg/bouncycastle/crypto/d$a;

    const-class v1, Lvj/h;

    const-string v2, "dsaDefaultParams"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/d$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/d$a;->e:Lorg/bouncycastle/crypto/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/d$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/crypto/d$a;->b:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lorg/bouncycastle/crypto/d$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lorg/bouncycastle/crypto/d$a;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/d$a;->b:Ljava/lang/Class;

    return-object p0
.end method
