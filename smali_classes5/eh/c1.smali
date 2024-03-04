.class abstract Leh/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/String;I)Leh/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    new-instance v0, Leh/k;

    .line 2
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Leh/k;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/net/InetAddress;
.end method

.method abstract c()I
.end method
