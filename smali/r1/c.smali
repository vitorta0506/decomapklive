.class public final Lr1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/c$a;
    }
.end annotation


# static fields
.field private static final c:Lr1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/c$a;

    invoke-direct {v0}, Lr1/c$a;-><init>()V

    invoke-virtual {v0}, Lr1/c$a;->a()Lr1/c;

    move-result-object v0

    sput-object v0, Lr1/c;->c:Lr1/c;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr1/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lr1/c;->b:Ljava/util/List;

    return-void
.end method

.method public static c()Lr1/c$a;
    .locals 1

    new-instance v0, Lr1/c$a;

    invoke-direct {v0}, Lr1/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr1/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    iget-object v0, p0, Lr1/c;->a:Ljava/lang/String;

    return-object v0
.end method
