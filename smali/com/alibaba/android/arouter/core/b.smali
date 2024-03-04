.class Lcom/alibaba/android/arouter/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/android/arouter/facade/template/IRouteGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/arouter/facade/model/RouteMeta;",
            ">;"
        }
    .end annotation
.end field

.field static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/alibaba/android/arouter/facade/template/IProvider;",
            ">;"
        }
    .end annotation
.end field

.field static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/arouter/facade/model/RouteMeta;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/android/arouter/facade/template/IInterceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/arouter/facade/template/IInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/arouter/core/b;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/arouter/core/b;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/arouter/core/b;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/arouter/core/b;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/alibaba/android/arouter/base/UniqueKeyTreeMap;

    const-string v1, "More than one interceptors use same priority [%s]"

    invoke-direct {v0, v1}, Lcom/alibaba/android/arouter/base/UniqueKeyTreeMap;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/core/b;->e:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/android/arouter/core/b;->f:Ljava/util/List;

    return-void
.end method
