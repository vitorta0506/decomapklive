.class public final Lmh/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Lmh/n;

.field public static final f:Lmh/j;


# instance fields
.field private final a:Lmh/l;

.field private final b:Lmh/k;

.field private final c:Lmh/m;

.field private final d:Lmh/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lmh/n;->b()Lmh/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lmh/n$b;->b()Lmh/n;

    move-result-object v0

    sput-object v0, Lmh/j;->e:Lmh/n;

    .line 2
    new-instance v1, Lmh/j;

    sget-object v2, Lmh/l;->c:Lmh/l;

    sget-object v3, Lmh/k;->b:Lmh/k;

    sget-object v4, Lmh/m;->b:Lmh/m;

    invoke-direct {v1, v2, v3, v4, v0}, Lmh/j;-><init>(Lmh/l;Lmh/k;Lmh/m;Lmh/n;)V

    sput-object v1, Lmh/j;->f:Lmh/j;

    return-void
.end method

.method private constructor <init>(Lmh/l;Lmh/k;Lmh/m;Lmh/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmh/j;->a:Lmh/l;

    .line 3
    iput-object p2, p0, Lmh/j;->b:Lmh/k;

    .line 4
    iput-object p3, p0, Lmh/j;->c:Lmh/m;

    .line 5
    iput-object p4, p0, Lmh/j;->d:Lmh/n;

    return-void
.end method


# virtual methods
.method public a()Lmh/k;
    .locals 1

    iget-object v0, p0, Lmh/j;->b:Lmh/k;

    return-object v0
.end method

.method public b()Lmh/l;
    .locals 1

    iget-object v0, p0, Lmh/j;->a:Lmh/l;

    return-object v0
.end method

.method public c()Lmh/m;
    .locals 1

    iget-object v0, p0, Lmh/j;->c:Lmh/m;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lmh/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lmh/j;

    .line 3
    iget-object v1, p0, Lmh/j;->a:Lmh/l;

    iget-object v3, p1, Lmh/j;->a:Lmh/l;

    invoke-virtual {v1, v3}, Lmh/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmh/j;->b:Lmh/k;

    iget-object v3, p1, Lmh/j;->b:Lmh/k;

    .line 4
    invoke-virtual {v1, v3}, Lmh/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmh/j;->c:Lmh/m;

    iget-object p1, p1, Lmh/j;->c:Lmh/m;

    .line 5
    invoke-virtual {v1, p1}, Lmh/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lmh/j;->a:Lmh/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lmh/j;->b:Lmh/k;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lmh/j;->c:Lmh/m;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanContext{traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmh/j;->a:Lmh/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmh/j;->b:Lmh/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", traceOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmh/j;->c:Lmh/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
