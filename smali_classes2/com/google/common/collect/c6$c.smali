.class abstract Lcom/google/common/collect/c6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/c6$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
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
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/c6$i<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lcom/google/common/collect/c6$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/c6$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/c6$c;->a:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/c6$c;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/c6$c;->c:Lcom/google/common/collect/c6$i;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/c6$c;->b:I

    return v0
.end method

.method public c()Lcom/google/common/collect/c6$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c6$c;->c:Lcom/google/common/collect/c6$i;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c6$c;->a:Ljava/lang/Object;

    return-object v0
.end method
