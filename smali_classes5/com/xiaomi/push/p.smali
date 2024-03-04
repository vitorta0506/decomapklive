.class public abstract Lcom/xiaomi/push/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/push/p;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/p;->a:I

    return v0
.end method

.method public abstract b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/o3;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/o3;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
