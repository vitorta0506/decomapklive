.class final Ll5/c$b;
.super Ll5/m$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll5/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ll5/m;
    .locals 4

    .line 1
    iget-object v0, p0, Ll5/c$b;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll5/c$b;->b:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ll5/c;

    iget-object v1, p0, Ll5/c$b;->a:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Ll5/c$b;->b:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ll5/c;-><init>(ILjava/util/concurrent/ThreadFactory;Ll5/c$a;)V

    return-object v0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v1, p0, Ll5/c$b;->a:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " executorThreadCount"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    iget-object v1, p0, Ll5/c$b;->b:Ljava/util/concurrent/ThreadFactory;

    if-nez v1, :cond_3

    const-string v1, " threadFactory"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/util/concurrent/ThreadFactory;)Ll5/m$b;
    .locals 1

    const-string v0, "Null threadFactory"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll5/c$b;->b:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public c(I)Ll5/m$b;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ll5/c$b;->a:Ljava/lang/Integer;

    return-object p0
.end method
