.class public Lrk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lrk/n;

.field public static final f:Lrk/n;

.field public static final g:Lrk/n;

.field public static final h:Lrk/n;

.field public static final i:Lrk/n;

.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lrk/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lorg/bouncycastle/asn1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lrk/n;

    sget-object v1, Lej/b;->c:Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v2, v1}, Lrk/n;-><init>(IIILorg/bouncycastle/asn1/n;)V

    sput-object v0, Lrk/n;->e:Lrk/n;

    new-instance v0, Lrk/n;

    const/4 v2, 0x6

    const/16 v4, 0xa

    invoke-direct {v0, v2, v3, v4, v1}, Lrk/n;-><init>(IIILorg/bouncycastle/asn1/n;)V

    sput-object v0, Lrk/n;->f:Lrk/n;

    new-instance v0, Lrk/n;

    const/4 v2, 0x7

    const/16 v4, 0xf

    invoke-direct {v0, v2, v3, v4, v1}, Lrk/n;-><init>(IIILorg/bouncycastle/asn1/n;)V

    sput-object v0, Lrk/n;->g:Lrk/n;

    new-instance v0, Lrk/n;

    const/16 v2, 0x8

    const/16 v4, 0x14

    invoke-direct {v0, v2, v3, v4, v1}, Lrk/n;-><init>(IIILorg/bouncycastle/asn1/n;)V

    sput-object v0, Lrk/n;->h:Lrk/n;

    new-instance v0, Lrk/n;

    const/16 v2, 0x9

    const/16 v4, 0x19

    invoke-direct {v0, v2, v3, v4, v1}, Lrk/n;-><init>(IIILorg/bouncycastle/asn1/n;)V

    sput-object v0, Lrk/n;->i:Lrk/n;

    new-instance v0, Lrk/n$a;

    invoke-direct {v0}, Lrk/n$a;-><init>()V

    sput-object v0, Lrk/n;->j:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(IIILorg/bouncycastle/asn1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrk/n;->a:I

    iput p2, p0, Lrk/n;->b:I

    iput p3, p0, Lrk/n;->c:I

    iput-object p4, p0, Lrk/n;->d:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method static synthetic a(Lrk/n;)I
    .locals 0

    iget p0, p0, Lrk/n;->a:I

    return p0
.end method

.method static e(I)Lrk/n;
    .locals 1

    sget-object v0, Lrk/n;->j:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrk/n;

    return-object p0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Lrk/n;->d:Lorg/bouncycastle/asn1/n;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lrk/n;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lrk/n;->b:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lrk/n;->a:I

    return v0
.end method
