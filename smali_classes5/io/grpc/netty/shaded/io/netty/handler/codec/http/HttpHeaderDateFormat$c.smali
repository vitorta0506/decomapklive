.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpHeaderDateFormat$c;
.super Ljava/text/SimpleDateFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpHeaderDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29c810865107ca62L


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "E MMM d HH:mm:ss yyyy"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "GMT"

    .line 2
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
