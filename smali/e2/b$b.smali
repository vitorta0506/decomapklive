.class Le2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field final synthetic b:Le2/b;


# direct methods
.method public constructor <init>(Le2/b;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2/b$b;->b:Le2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Le2/b$b;->a:J

    return-void
.end method


# virtual methods
.method public c(J)Lc2/b0$a;
    .locals 8

    .line 1
    iget-object v0, p0, Le2/b$b;->b:Le2/b;

    invoke-static {v0}, Le2/b;->c(Le2/b;)[Le2/e;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Le2/e;->i(J)Lc2/b0$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    iget-object v2, p0, Le2/b$b;->b:Le2/b;

    invoke-static {v2}, Le2/b;->c(Le2/b;)[Le2/e;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Le2/b$b;->b:Le2/b;

    invoke-static {v2}, Le2/b;->c(Le2/b;)[Le2/e;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Le2/e;->i(J)Lc2/b0$a;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lc2/b0$a;->a:Lc2/c0;

    iget-wide v3, v3, Lc2/c0;->b:J

    iget-object v5, v0, Lc2/b0$a;->a:Lc2/c0;

    iget-wide v5, v5, Lc2/c0;->b:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Le2/b$b;->a:J

    return-wide v0
.end method
