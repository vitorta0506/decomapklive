.class public Lrk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lrk/e;

.field public static final i:Lrk/e;

.field public static final j:Lrk/e;

.field public static final k:Lrk/e;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lrk/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lorg/bouncycastle/asn1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v8, Lrk/e;

    sget-object v9, Lej/b;->c:Lorg/bouncycastle/asn1/n;

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/16 v4, 0x109

    const/4 v5, 0x7

    const/16 v6, 0x2144

    move-object v0, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lrk/e;-><init>(IIIIIILorg/bouncycastle/asn1/n;)V

    sput-object v8, Lrk/e;->h:Lrk/e;

    new-instance v8, Lrk/e;

    const/4 v1, 0x2

    const/4 v3, 0x2

    const/16 v4, 0x85

    const/4 v5, 0x6

    const/16 v6, 0x10c4

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lrk/e;-><init>(IIIIIILorg/bouncycastle/asn1/n;)V

    sput-object v8, Lrk/e;->i:Lrk/e;

    new-instance v8, Lrk/e;

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/16 v4, 0x43

    const/4 v5, 0x4

    const/16 v6, 0x884

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lrk/e;-><init>(IIIIIILorg/bouncycastle/asn1/n;)V

    sput-object v8, Lrk/e;->j:Lrk/e;

    new-instance v8, Lrk/e;

    const/4 v1, 0x4

    const/16 v3, 0x8

    const/16 v4, 0x22

    const/4 v5, 0x0

    const/16 v6, 0x464

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lrk/e;-><init>(IIIIIILorg/bouncycastle/asn1/n;)V

    sput-object v8, Lrk/e;->k:Lrk/e;

    new-instance v0, Lrk/e$a;

    invoke-direct {v0}, Lrk/e$a;-><init>()V

    sput-object v0, Lrk/e;->l:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(IIIIIILorg/bouncycastle/asn1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrk/e;->a:I

    iput p2, p0, Lrk/e;->b:I

    iput p3, p0, Lrk/e;->c:I

    iput p4, p0, Lrk/e;->d:I

    iput p5, p0, Lrk/e;->e:I

    iput p6, p0, Lrk/e;->f:I

    iput-object p7, p0, Lrk/e;->g:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method static synthetic a(Lrk/e;)I
    .locals 0

    iget p0, p0, Lrk/e;->a:I

    return p0
.end method

.method public static f(I)Lrk/e;
    .locals 1

    sget-object v0, Lrk/e;->l:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrk/e;

    return-object p0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Lrk/e;->g:Lorg/bouncycastle/asn1/n;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lrk/e;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lrk/e;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lrk/e;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lrk/e;->a:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lrk/e;->c:I

    return v0
.end method
