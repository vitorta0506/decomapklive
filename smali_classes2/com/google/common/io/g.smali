.class public final Lcom/google/common/io/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/g$b;,
        Lcom/google/common/io/g$a;,
        Lcom/google/common/io/g$c;
    }
.end annotation


# static fields
.field private static final d:Lcom/google/common/io/g$c;


# instance fields
.field final a:Lcom/google/common/io/g$c;

.field private final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/io/g$b;->b()Lcom/google/common/io/g$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/common/io/g$a;->a:Lcom/google/common/io/g$a;

    :cond_0
    sput-object v0, Lcom/google/common/io/g;->d:Lcom/google/common/io/g$c;

    return-void
.end method

.method constructor <init>(Lcom/google/common/io/g$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/io/g;->b:Ljava/util/Deque;

    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/g$c;

    iput-object p1, p0, Lcom/google/common/io/g;->a:Lcom/google/common/io/g$c;

    return-void
.end method

.method public static a()Lcom/google/common/io/g;
    .locals 2

    new-instance v0, Lcom/google/common/io/g;

    sget-object v1, Lcom/google/common/io/g;->d:Lcom/google/common/io/g$c;

    invoke-direct {v0, v1}, Lcom/google/common/io/g;-><init>(Lcom/google/common/io/g$c;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/io/Closeable;",
            ">(TC;)TC;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/io/g;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public c(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/common/io/g;->c:Ljava/lang/Throwable;

    .line 3
    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/y;->i(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/g;->c:Ljava/lang/Throwable;

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/common/io/g;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/common/io/g;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 4
    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/google/common/io/g;->a:Lcom/google/common/io/g$c;

    invoke-interface {v3, v1, v0, v2}, Lcom/google/common/io/g$c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/io/g;->c:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/y;->i(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method
