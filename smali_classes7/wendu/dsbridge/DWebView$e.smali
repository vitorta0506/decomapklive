.class Lwendu/dsbridge/DWebView$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwendu/dsbridge/DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lwendu/dsbridge/DWebView;


# direct methods
.method constructor <init>(Lwendu/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwendu/dsbridge/DWebView$e;->c:Lwendu/dsbridge/DWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lwendu/dsbridge/DWebView$e;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lwendu/dsbridge/DWebView$e;->b:Ljava/util/Map;

    return-void
.end method
