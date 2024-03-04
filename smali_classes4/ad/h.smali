.class public Lad/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lad/h$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:Lad/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lad/h$b;)V
    .locals 1
    .param p1    # Lad/h$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lad/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p1, Lad/h$b;->a:I

    iput v0, p0, Lad/h;->a:I

    .line 5
    iget v0, p1, Lad/h$b;->b:I

    iput v0, p0, Lad/h;->b:I

    .line 6
    iget-boolean v0, p1, Lad/h$b;->c:Z

    iput-boolean v0, p0, Lad/h;->c:Z

    .line 7
    iget-object v0, p1, Lad/h$b;->d:Lad/d;

    iput-object v0, p0, Lad/h;->d:Lad/d;

    .line 8
    iget-object p1, p1, Lad/h$b;->e:Ljava/lang/String;

    iput-object p1, p0, Lad/h;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lad/h$b;Lad/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lad/h;-><init>(Lad/h$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lad/j;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lad/h;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lad/j;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lad/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lad/h;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lad/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "."

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c([Ljava/lang/StackTraceElement;)I
    .locals 4
    .param p1    # [Ljava/lang/StackTraceElement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lad/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 2
    :goto_0
    array-length v1, p1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 3
    aget-object v1, p1, v0

    .line 4
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 5
    const-class v3, Lad/g;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lad/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/2addr v0, v2

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private d(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lad/h;->e(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p3}, Lad/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lad/h;->d:Lad/d;

    invoke-interface {v0, p1, p2, p3}, Lad/d;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p3}, Lad/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "line.separator"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 3
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u2502 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lad/h;->e(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    invoke-direct {p0, p1, p2, v0}, Lad/h;->e(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h(ILjava/lang/String;I)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lad/h;->c:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2502 Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lad/h;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lad/h;->g(ILjava/lang/String;)V

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lad/h;->c([Ljava/lang/StackTraceElement;)I

    move-result v1

    iget v2, p0, Lad/h;->b:I

    add-int/2addr v1, v2

    add-int v2, p3, v1

    .line 6
    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 7
    array-length p3, v0

    sub-int/2addr p3, v1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    const-string v2, ""

    :goto_0
    if-lez p3, :cond_3

    add-int v3, p3, v1

    .line 8
    array-length v4, v0

    if-lt v3, v4, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2502

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    .line 13
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lad/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    .line 15
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    .line 18
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lad/h;->e(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private i(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lad/h;->e(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j()Lad/h$b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lad/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lad/h$b;-><init>(Lad/h$a;)V

    return-object v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p3}, Lad/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lad/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2}, Lad/h;->i(ILjava/lang/String;)V

    .line 4
    iget v0, p0, Lad/h;->a:I

    invoke-direct {p0, p1, p2, v0}, Lad/h;->h(ILjava/lang/String;I)V

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 6
    array-length v1, v0

    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_1

    .line 7
    iget v0, p0, Lad/h;->a:I

    if-lez v0, :cond_0

    .line 8
    invoke-direct {p0, p1, p2}, Lad/h;->g(ILjava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lad/h;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lad/h;->d(ILjava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget p3, p0, Lad/h;->a:I

    if-lez p3, :cond_2

    .line 12
    invoke-direct {p0, p1, p2}, Lad/h;->g(ILjava/lang/String;)V

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-ge p3, v1, :cond_3

    sub-int v3, v1, p3

    .line 13
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 14
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, p3, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, p1, p2, v4}, Lad/h;->f(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit16 p3, p3, 0xfa0

    goto :goto_0

    .line 15
    :cond_3
    invoke-direct {p0, p1, p2}, Lad/h;->d(ILjava/lang/String;)V

    return-void
.end method
