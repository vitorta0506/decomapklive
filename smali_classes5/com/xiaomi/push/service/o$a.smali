.class Lcom/xiaomi/push/service/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/service/o$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/service/o$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/xiaomi/push/service/o;


# direct methods
.method private constructor <init>(Lcom/xiaomi/push/service/o;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/o$a;->c:Lcom/xiaomi/push/service/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/o$a;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/o$a;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/o;Lcom/xiaomi/push/service/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/o$a;-><init>(Lcom/xiaomi/push/service/o;)V

    return-void
.end method
