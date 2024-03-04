.class final Lcom/google/common/collect/m3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Lcom/google/common/collect/l3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l3<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/l3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3<",
            "TC;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/m3$b;->a:Lcom/google/common/collect/l3;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/l3;Lcom/google/common/collect/m3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/m3$b;-><init>(Lcom/google/common/collect/l3;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/m3;

    iget-object v1, p0, Lcom/google/common/collect/m3$b;->a:Lcom/google/common/collect/l3;

    invoke-direct {v0, v1}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/l3;)V

    return-object v0
.end method
