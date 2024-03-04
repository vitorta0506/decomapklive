.class abstract Lcom/google/common/collect/c6$d;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/c6$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/c6$i<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Lcom/google/common/collect/c6$i<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Lcom/google/common/collect/c6$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/c6$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;ITE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput p3, p0, Lcom/google/common/collect/c6$d;->a:I

    .line 3
    iput-object p4, p0, Lcom/google/common/collect/c6$d;->b:Lcom/google/common/collect/c6$i;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/c6$d;->a:I

    return v0
.end method

.method public c()Lcom/google/common/collect/c6$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c6$d;->b:Lcom/google/common/collect/c6$i;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
