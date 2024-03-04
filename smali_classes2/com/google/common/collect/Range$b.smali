.class Lcom/google/common/collect/Range$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/h<",
        "Lcom/google/common/collect/Range;",
        "Lcom/google/common/collect/g3;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/Range$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/Range$b;

    invoke-direct {v0}, Lcom/google/common/collect/Range$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range$b;->a:Lcom/google/common/collect/Range$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/g3;
    .locals 0

    iget-object p1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range$b;->a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/g3;

    move-result-object p1

    return-object p1
.end method
