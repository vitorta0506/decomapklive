.class final Ll2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ll2/a;


# direct methods
.method private constructor <init>(Ll2/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll2/a$b;->a:Ll2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ll2/a;Ll2/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ll2/a$b;-><init>(Ll2/a;)V

    return-void
.end method


# virtual methods
.method public c(J)Lc2/b0$a;
    .locals 10

    .line 1
    iget-object v0, p0, Ll2/a$b;->a:Ll2/a;

    invoke-static {v0}, Ll2/a;->d(Ll2/a;)Ll2/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ll2/i;->c(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Ll2/a$b;->a:Ll2/a;

    .line 3
    invoke-static {v2}, Ll2/a;->e(Ll2/a;)J

    move-result-wide v2

    iget-object v4, p0, Ll2/a$b;->a:Ll2/a;

    .line 4
    invoke-static {v4}, Ll2/a;->f(Ll2/a;)J

    move-result-wide v4

    iget-object v6, p0, Ll2/a$b;->a:Ll2/a;

    invoke-static {v6}, Ll2/a;->e(Ll2/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    iget-object v4, p0, Ll2/a$b;->a:Ll2/a;

    invoke-static {v4}, Ll2/a;->g(Ll2/a;)J

    move-result-wide v4

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    .line 5
    iget-object v0, p0, Ll2/a$b;->a:Ll2/a;

    .line 6
    invoke-static {v0}, Ll2/a;->e(Ll2/a;)J

    move-result-wide v6

    iget-object v0, p0, Ll2/a$b;->a:Ll2/a;

    invoke-static {v0}, Ll2/a;->f(Ll2/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/l0;->q(JJJ)J

    move-result-wide v0

    .line 7
    new-instance v2, Lc2/b0$a;

    new-instance v3, Lc2/c0;

    invoke-direct {v3, p1, p2, v0, v1}, Lc2/c0;-><init>(JJ)V

    invoke-direct {v2, v3}, Lc2/b0$a;-><init>(Lc2/c0;)V

    return-object v2
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()J
    .locals 3

    iget-object v0, p0, Ll2/a$b;->a:Ll2/a;

    invoke-static {v0}, Ll2/a;->d(Ll2/a;)Ll2/i;

    move-result-object v0

    iget-object v1, p0, Ll2/a$b;->a:Ll2/a;

    invoke-static {v1}, Ll2/a;->g(Ll2/a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ll2/i;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
