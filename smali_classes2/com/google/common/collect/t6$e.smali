.class Lcom/google/common/collect/t6$e;
.super Lcom/google/common/collect/t6$b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/t6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t6$b<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/t6$b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/t6$e;->a:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/t6$e;->b:I

    const-string p1, "count"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t6$e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/t6$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t6$e<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/t6$e;->b:I

    return v0
.end method
