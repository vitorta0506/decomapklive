.class Leh/s0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/w1$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Leh/w1$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Ljava/lang/String;",
            "Leh/w1$a$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p3, p2}, Leh/s0$b;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/w1$a$a;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Leh/s0$b;->a:Ljava/util/List;

    .line 6
    iput-object p2, p0, Leh/s0$b;->b:Ljava/util/Map;

    .line 7
    iput-object p3, p0, Leh/s0$b;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Leh/s0$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Leh/s0$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Leh/s0$b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/s0$b;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Leh/s0$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Leh/s0$b;->c:Ljava/util/List;

    return-object p0
.end method
