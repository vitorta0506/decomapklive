.class final enum Leh/a$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leh/a$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leh/a$f;

.field public static final enum b:Leh/a$f;

.field public static final enum c:Leh/a$f;

.field public static final enum d:Leh/a$f;

.field public static final enum e:Leh/a$f;

.field private static final synthetic f:[Leh/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Leh/a$f;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leh/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh/a$f;->a:Leh/a$f;

    new-instance v1, Leh/a$f;

    const-string v3, "LDS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leh/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leh/a$f;->b:Leh/a$f;

    new-instance v3, Leh/a$f;

    const-string v5, "RDS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leh/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leh/a$f;->c:Leh/a$f;

    new-instance v5, Leh/a$f;

    const-string v7, "CDS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Leh/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Leh/a$f;->d:Leh/a$f;

    new-instance v7, Leh/a$f;

    const-string v9, "EDS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Leh/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Leh/a$f;->e:Leh/a$f;

    const/4 v9, 0x5

    new-array v9, v9, [Leh/a$f;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Leh/a$f;->f:[Leh/a$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Leh/a$f;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "type.googleapis.com/envoy.config.route.v3.RouteConfiguration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "type.googleapis.com/envoy.api.v2.ClusterLoadAssignment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "type.googleapis.com/envoy.api.v2.Listener"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "type.googleapis.com/envoy.config.listener.v3.Listener"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "type.googleapis.com/envoy.config.cluster.v3.Cluster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "type.googleapis.com/envoy.api.v2.Cluster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "type.googleapis.com/envoy.config.endpoint.v3.ClusterLoadAssignment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "type.googleapis.com/envoy.api.v2.RouteConfiguration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    sget-object p0, Leh/a$f;->a:Leh/a$f;

    return-object p0

    .line 3
    :pswitch_0
    sget-object p0, Leh/a$f;->b:Leh/a$f;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Leh/a$f;->d:Leh/a$f;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Leh/a$f;->e:Leh/a$f;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Leh/a$f;->c:Leh/a$f;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x21b4ee62 -> :sswitch_7
        -0x1a52462a -> :sswitch_6
        0x1bef8e29 -> :sswitch_5
        0x23ae527c -> :sswitch_4
        0x3b1655ca -> :sswitch_3
        0x66d7ce65 -> :sswitch_2
        0x670d9edc -> :sswitch_1
        0x7afd62ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Leh/a$f;
    .locals 1

    const-class v0, Leh/a$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leh/a$f;

    return-object p0
.end method

.method public static values()[Leh/a$f;
    .locals 1

    sget-object v0, Leh/a$f;->f:[Leh/a$f;

    invoke-virtual {v0}, [Leh/a$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leh/a$f;

    return-object v0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Leh/a$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "type.googleapis.com/envoy.config.endpoint.v3.ClusterLoadAssignment"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or missing case in enum switch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string v0, "type.googleapis.com/envoy.config.cluster.v3.Cluster"

    return-object v0

    :cond_2
    const-string v0, "type.googleapis.com/envoy.config.route.v3.RouteConfiguration"

    return-object v0

    :cond_3
    const-string v0, "type.googleapis.com/envoy.config.listener.v3.Listener"

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Leh/a$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "type.googleapis.com/envoy.api.v2.ClusterLoadAssignment"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or missing case in enum switch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string v0, "type.googleapis.com/envoy.api.v2.Cluster"

    return-object v0

    :cond_2
    const-string v0, "type.googleapis.com/envoy.api.v2.RouteConfiguration"

    return-object v0

    :cond_3
    const-string v0, "type.googleapis.com/envoy.api.v2.Listener"

    return-object v0
.end method
