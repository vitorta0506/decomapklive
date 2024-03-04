.class public final Lrb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lrb/b;

.field public static final c:Lrb/b;

.field public static final d:Lrb/b;

.field public static final e:Lrb/b;

.field public static final f:Lrb/b;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrb/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrb/b;-><init>(I)V

    sput-object v0, Lrb/b;->b:Lrb/b;

    new-instance v0, Lrb/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lrb/b;-><init>(I)V

    sput-object v0, Lrb/b;->c:Lrb/b;

    new-instance v0, Lrb/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lrb/b;-><init>(I)V

    sput-object v0, Lrb/b;->d:Lrb/b;

    new-instance v0, Lrb/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lrb/b;-><init>(I)V

    sput-object v0, Lrb/b;->e:Lrb/b;

    new-instance v0, Lrb/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lrb/b;-><init>(I)V

    sput-object v0, Lrb/b;->f:Lrb/b;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrb/b;->a:I

    return-void
.end method

.method private varargs b([Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lrb/b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_0
    const-string v0, "SG"

    return-object v0

    :cond_1
    const-string v0, "RU"

    return-object v0

    :cond_2
    const-string v0, "DE"

    return-object v0

    :cond_3
    const-string v0, "CN"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lrb/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lrb/b;

    iget v2, p0, Lrb/b;->a:I

    iget p1, p1, Lrb/b;->a:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lrb/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lrb/b;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
