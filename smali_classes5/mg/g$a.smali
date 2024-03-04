.class Lmg/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmg/g;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/channels/SelectionKey;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lmg/g;


# direct methods
.method constructor <init>(Lmg/g;)V
    .locals 0

    iput-object p1, p0, Lmg/g$a;->b:Lmg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/channels/SelectionKey;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmg/g$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmg/g$a;->b:Lmg/g;

    iget-object v0, v0, Lmg/g;->a:[Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lmg/g$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmg/g$a;->a:I

    aget-object v0, v0, v1

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lmg/g$a;->a:I

    iget-object v1, p0, Lmg/g$a;->b:Lmg/g;

    iget v1, v1, Lmg/g;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmg/g$a;->a()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
