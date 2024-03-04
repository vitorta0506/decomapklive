.class final Lv6/c$e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv6/c$e$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv6/c$e;->i()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv6/c$e;Lcom/google/protobuf/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lv6/c$e;->c(Lv6/c$e;Lcom/google/protobuf/r1;)V

    return-void
.end method
