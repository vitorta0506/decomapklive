.class public Lcom/google/protobuf/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f0$a;
    }
.end annotation


# static fields
.field private static volatile b:Z = false

.field private static c:Z = true

.field private static volatile d:Lcom/google/protobuf/f0;

.field static final e:Lcom/google/protobuf/f0;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/f0$a;",
            "Lcom/google/protobuf/GeneratedMessageLite$d<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/f0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f0;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f0;->e:Lcom/google/protobuf/f0;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/f0;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/f0;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/f0;->e:Lcom/google/protobuf/f0;

    if-ne p1, v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/f0;->a:Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/google/protobuf/f0;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/f0;->a:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/f0;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lcom/google/protobuf/f0;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/f0;->d:Lcom/google/protobuf/f0;

    if-nez v0, :cond_2

    .line 2
    const-class v1, Lcom/google/protobuf/f0;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/protobuf/f0;->d:Lcom/google/protobuf/f0;

    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/google/protobuf/f0;->c:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/protobuf/e0;->a()Lcom/google/protobuf/f0;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/protobuf/f0;->e:Lcom/google/protobuf/f0;

    :goto_0
    sput-object v0, Lcom/google/protobuf/f0;->d:Lcom/google/protobuf/f0;

    .line 6
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/f0;->b:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/o1;I)Lcom/google/protobuf/GeneratedMessageLite$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/o1;",
            ">(TContainingType;I)",
            "Lcom/google/protobuf/GeneratedMessageLite$d<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/f0;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/f0$a;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/f0$a;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$d;

    return-object p1
.end method
