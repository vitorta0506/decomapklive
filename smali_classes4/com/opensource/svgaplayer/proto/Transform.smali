.class public final Lcom/opensource/svgaplayer/proto/Transform;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/proto/Transform$ProtoAdapter_Transform;,
        Lcom/opensource/svgaplayer/proto/Transform$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/opensource/svgaplayer/proto/Transform;",
        "Lcom/opensource/svgaplayer/proto/Transform$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/opensource/svgaplayer/proto/Transform;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_A:Ljava/lang/Float;

.field public static final DEFAULT_B:Ljava/lang/Float;

.field public static final DEFAULT_C:Ljava/lang/Float;

.field public static final DEFAULT_D:Ljava/lang/Float;

.field public static final DEFAULT_TX:Ljava/lang/Float;

.field public static final DEFAULT_TY:Ljava/lang/Float;

.field private static final serialVersionUID:J


# instance fields
.field public final a:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x1
    .end annotation
.end field

.field public final b:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x2
    .end annotation
.end field

.field public final c:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x3
    .end annotation
.end field

.field public final d:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x4
    .end annotation
.end field

.field public final tx:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x5
    .end annotation
.end field

.field public final ty:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/opensource/svgaplayer/proto/Transform$ProtoAdapter_Transform;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/proto/Transform$ProtoAdapter_Transform;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/proto/Transform;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/proto/Transform;->DEFAULT_A:Ljava/lang/Float;

    .line 3
    sput-object v0, Lcom/opensource/svgaplayer/proto/Transform;->DEFAULT_B:Ljava/lang/Float;

    .line 4
    sput-object v0, Lcom/opensource/svgaplayer/proto/Transform;->DEFAULT_C:Ljava/lang/Float;

    .line 5
    sput-object v0, Lcom/opensource/svgaplayer/proto/Transform;->DEFAULT_D:Ljava/lang/Float;

    .line 6
    sput-object v0, Lcom/opensource/svgaplayer/proto/Transform;->DEFAULT_TX:Ljava/lang/Float;

    .line 7
    sput-object v0, Lcom/opensource/svgaplayer/proto/Transform;->DEFAULT_TY:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 8

    .line 1
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/opensource/svgaplayer/proto/Transform;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/opensource/svgaplayer/proto/Transform;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    .line 4
    iput-object p2, p0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    .line 5
    iput-object p3, p0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    .line 6
    iput-object p4, p0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    .line 7
    iput-object p5, p0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    .line 8
    iput-object p6, p0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/opensource/svgaplayer/proto/Transform;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/opensource/svgaplayer/proto/Transform;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    .line 7
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    .line 8
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    .line 9
    invoke-static {v1, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 6
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 7
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 8
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    .line 9
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_6
    return v0
.end method

.method public newBuilder()Lcom/opensource/svgaplayer/proto/Transform$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/opensource/svgaplayer/proto/Transform$Builder;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/proto/Transform$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->a:Ljava/lang/Float;

    .line 4
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->b:Ljava/lang/Float;

    .line 5
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->c:Ljava/lang/Float;

    .line 6
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->d:Ljava/lang/Float;

    .line 7
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->tx:Ljava/lang/Float;

    .line 8
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->ty:Ljava/lang/Float;

    .line 9
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Transform;->newBuilder()Lcom/opensource/svgaplayer/proto/Transform$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-eqz v1, :cond_4

    const-string v1, ", tx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-eqz v1, :cond_5

    const-string v1, ", ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Transform{"

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
