.class final enum Lcom/google/common/collect/g8$c$e;
.super Lcom/google/common/collect/g8$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g8$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/g8$c;-><init>(Ljava/lang/String;ILcom/google/common/collect/g8$a;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/g8$c;->c:Lcom/google/common/collect/g8$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/g8$c;->b(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method
