.class final Lorg/threeten/bp/format/c$n;
.super Lorg/threeten/bp/format/c$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation


# static fields
.field static final i:Lorg/threeten/bp/LocalDate;


# instance fields
.field private final g:I

.field private final h:Lorg/threeten/bp/chrono/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/c$n;->i:Lorg/threeten/bp/LocalDate;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/temporal/g;IIILorg/threeten/bp/chrono/b;I)V
    .locals 7

    .line 1
    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/format/c$k;-><init>(Lorg/threeten/bp/temporal/g;IILorg/threeten/bp/format/SignStyle;ILorg/threeten/bp/format/c$a;)V

    .line 2
    iput p4, p0, Lorg/threeten/bp/format/c$n;->g:I

    .line 3
    iput-object p5, p0, Lorg/threeten/bp/format/c$n;->h:Lorg/threeten/bp/chrono/b;

    return-void
.end method


# virtual methods
.method c(Lorg/threeten/bp/format/e;J)J
    .locals 6

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2
    iget v2, p0, Lorg/threeten/bp/format/c$n;->g:I

    .line 3
    iget-object v3, p0, Lorg/threeten/bp/format/c$n;->h:Lorg/threeten/bp/chrono/b;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/temporal/c;

    move-result-object p1

    invoke-static {p1}, Lorg/threeten/bp/chrono/i;->from(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/i;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lorg/threeten/bp/format/c$n;->h:Lorg/threeten/bp/chrono/b;

    invoke-virtual {p1, v2}, Lorg/threeten/bp/chrono/i;->date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;

    move-result-object p1

    iget-object v2, p0, Lorg/threeten/bp/format/c$k;->a:Lorg/threeten/bp/temporal/g;

    invoke-virtual {p1, v2}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v2

    :cond_0
    int-to-long v3, v2

    cmp-long p1, p2, v3

    if-ltz p1, :cond_1

    .line 6
    sget-object p1, Lorg/threeten/bp/format/c$k;->f:[I

    iget v3, p0, Lorg/threeten/bp/format/c$k;->b:I

    aget v4, p1, v3

    add-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    .line 7
    aget p1, p1, v3

    int-to-long p1, p1

    rem-long/2addr v0, p1

    return-wide v0

    .line 8
    :cond_1
    sget-object p1, Lorg/threeten/bp/format/c$k;->f:[I

    iget p2, p0, Lorg/threeten/bp/format/c$k;->c:I

    aget p1, p1, p2

    int-to-long p1, p1

    rem-long/2addr v0, p1

    return-wide v0
.end method

.method d(Lorg/threeten/bp/format/d;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/format/c$k;->d(Lorg/threeten/bp/format/d;)Z

    move-result p1

    return p1
.end method

.method e(Lorg/threeten/bp/format/d;JII)I
    .locals 7

    .line 1
    iget v0, p0, Lorg/threeten/bp/format/c$n;->g:I

    .line 2
    iget-object v1, p0, Lorg/threeten/bp/format/c$n;->h:Lorg/threeten/bp/chrono/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->h()Lorg/threeten/bp/chrono/i;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/threeten/bp/format/c$n;->h:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/i;->date(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/chrono/b;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/c$k;->a:Lorg/threeten/bp/temporal/g;

    invoke-virtual {v0, v1}, Ljl/c;->get(Lorg/threeten/bp/temporal/g;)I

    move-result v0

    move-object v1, p1

    move-object v2, p0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    .line 5
    invoke-virtual/range {v1 .. v6}, Lorg/threeten/bp/format/d;->b(Lorg/threeten/bp/format/c$n;JII)V

    :cond_0
    sub-int v1, p5, p4

    .line 6
    iget v2, p0, Lorg/threeten/bp/format/c$k;->b:I

    if-ne v1, v2, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-ltz v1, :cond_2

    .line 7
    sget-object v1, Lorg/threeten/bp/format/c$k;->f:[I

    aget v1, v1, v2

    int-to-long v1, v1

    int-to-long v3, v0

    .line 8
    rem-long v5, v3, v1

    sub-long v5, v3, v5

    if-lez v0, :cond_1

    add-long/2addr v5, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v5, p2

    :goto_0
    move-wide p2, v5

    cmp-long v0, p2, v3

    if-gez v0, :cond_2

    add-long/2addr p2, v1

    :cond_2
    move-wide v2, p2

    .line 9
    iget-object v1, p0, Lorg/threeten/bp/format/c$k;->a:Lorg/threeten/bp/temporal/g;

    move-object v0, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/d;->q(Lorg/threeten/bp/temporal/g;JII)I

    move-result p1

    return p1
.end method

.method f()Lorg/threeten/bp/format/c$k;
    .locals 9

    .line 1
    iget v0, p0, Lorg/threeten/bp/format/c$k;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/c$n;

    iget-object v3, p0, Lorg/threeten/bp/format/c$k;->a:Lorg/threeten/bp/temporal/g;

    iget v4, p0, Lorg/threeten/bp/format/c$k;->b:I

    iget v5, p0, Lorg/threeten/bp/format/c$k;->c:I

    iget v6, p0, Lorg/threeten/bp/format/c$n;->g:I

    iget-object v7, p0, Lorg/threeten/bp/format/c$n;->h:Lorg/threeten/bp/chrono/b;

    const/4 v8, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/threeten/bp/format/c$n;-><init>(Lorg/threeten/bp/temporal/g;IIILorg/threeten/bp/chrono/b;I)V

    return-object v0
.end method

.method bridge synthetic g(I)Lorg/threeten/bp/format/c$k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/c$n;->h(I)Lorg/threeten/bp/format/c$n;

    move-result-object p1

    return-object p1
.end method

.method h(I)Lorg/threeten/bp/format/c$n;
    .locals 8

    new-instance v7, Lorg/threeten/bp/format/c$n;

    iget-object v1, p0, Lorg/threeten/bp/format/c$k;->a:Lorg/threeten/bp/temporal/g;

    iget v2, p0, Lorg/threeten/bp/format/c$k;->b:I

    iget v3, p0, Lorg/threeten/bp/format/c$k;->c:I

    iget v4, p0, Lorg/threeten/bp/format/c$n;->g:I

    iget-object v5, p0, Lorg/threeten/bp/format/c$n;->h:Lorg/threeten/bp/chrono/b;

    iget v0, p0, Lorg/threeten/bp/format/c$k;->e:I

    add-int v6, v0, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/format/c$n;-><init>(Lorg/threeten/bp/temporal/g;IIILorg/threeten/bp/chrono/b;I)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReducedValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/c$k;->a:Lorg/threeten/bp/temporal/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/threeten/bp/format/c$k;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/threeten/bp/format/c$k;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/c$n;->h:Lorg/threeten/bp/chrono/b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/threeten/bp/format/c$n;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
