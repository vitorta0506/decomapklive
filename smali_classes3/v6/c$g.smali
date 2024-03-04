.class public Lv6/c$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv6/c$g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$b;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lv6/c$g;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lv6/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lv6/c$g;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static c()Lv6/c$g;
    .locals 1

    invoke-static {}, Lv6/c$g$a;->a()Lv6/c$g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lv6/c$g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$b;

    return-object p1
.end method

.method b(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lv6/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv6/c$g;->a(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    return-object p1
.end method
