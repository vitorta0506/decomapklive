.class public Lorg/light/bean/Light3DMMFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/Light3DMMFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public euler:[F

.field public exp:[F

.field public face_kit_vertex_num:I

.field public face_kit_vertices:[F

.field public is_kissing:Z

.field public point_scale:F

.field public proj_face_vertices:[F

.field public scale:F

.field public trace_id:I

.field public trans_matrix:[[F

.field public transform:[[F

.field public translate:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/Light3DMMFeature$1;

    invoke-direct {v0}, Lorg/light/bean/Light3DMMFeature$1;-><init>()V

    sput-object v0, Lorg/light/bean/Light3DMMFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [[F

    iput-object v0, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18
    iget-object v3, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    new-array v2, v2, [F

    aput-object v2, v3, v1

    .line 19
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [[F

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    const/4 v1, 0x0

    .line 21
    :goto_1
    iget-object v2, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 23
    iget-object v3, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    new-array v2, v2, [F

    aput-object v2, v3, v1

    .line 24
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->euler:[F

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->exp:[F

    .line 27
    const-class v1, Landroid/graphics/PointF;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->translate:Landroid/graphics/PointF;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/light/bean/Light3DMMFeature;->face_kit_vertex_num:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->face_kit_vertices:[F

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->proj_face_vertices:[F

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/light/bean/Light3DMMFeature;->trace_id:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/light/bean/Light3DMMFeature;->point_scale:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/light/bean/Light3DMMFeature;->scale:F

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lorg/light/bean/Light3DMMFeature;->is_kissing:Z

    return-void
.end method

.method public constructor <init>([[F[[F[F[FLandroid/graphics/PointF;I[F[FIFFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    .line 3
    iput-object p2, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    .line 4
    iput-object p3, p0, Lorg/light/bean/Light3DMMFeature;->euler:[F

    .line 5
    iput-object p4, p0, Lorg/light/bean/Light3DMMFeature;->exp:[F

    .line 6
    iput-object p5, p0, Lorg/light/bean/Light3DMMFeature;->translate:Landroid/graphics/PointF;

    .line 7
    iput p6, p0, Lorg/light/bean/Light3DMMFeature;->face_kit_vertex_num:I

    .line 8
    iput-object p7, p0, Lorg/light/bean/Light3DMMFeature;->face_kit_vertices:[F

    .line 9
    iput-object p8, p0, Lorg/light/bean/Light3DMMFeature;->proj_face_vertices:[F

    .line 10
    iput p9, p0, Lorg/light/bean/Light3DMMFeature;->trace_id:I

    .line 11
    iput p10, p0, Lorg/light/bean/Light3DMMFeature;->point_scale:F

    .line 12
    iput p11, p0, Lorg/light/bean/Light3DMMFeature;->scale:F

    .line 13
    iput-boolean p12, p0, Lorg/light/bean/Light3DMMFeature;->is_kissing:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [[F

    iput-object v0, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4
    iget-object v3, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    new-array v2, v2, [F

    aput-object v2, v3, v1

    .line 5
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [[F

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    const/4 v1, 0x0

    .line 7
    :goto_1
    iget-object v2, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    iget-object v3, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    new-array v2, v2, [F

    aput-object v2, v3, v1

    .line 10
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->euler:[F

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->exp:[F

    .line 13
    const-class v1, Landroid/graphics/PointF;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->translate:Landroid/graphics/PointF;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/light/bean/Light3DMMFeature;->face_kit_vertex_num:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->face_kit_vertices:[F

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lorg/light/bean/Light3DMMFeature;->proj_face_vertices:[F

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/light/bean/Light3DMMFeature;->trace_id:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/light/bean/Light3DMMFeature;->point_scale:F

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/light/bean/Light3DMMFeature;->scale:F

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lorg/light/bean/Light3DMMFeature;->is_kissing:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lorg/light/bean/Light3DMMFeature;->trans_matrix:[[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    array-length v5, v4

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloatArray([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lorg/light/bean/Light3DMMFeature;->transform:[[F

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7
    array-length v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lorg/light/bean/Light3DMMFeature;->euler:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 10
    iget-object v0, p0, Lorg/light/bean/Light3DMMFeature;->exp:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 11
    iget-object v0, p0, Lorg/light/bean/Light3DMMFeature;->translate:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    iget p2, p0, Lorg/light/bean/Light3DMMFeature;->face_kit_vertex_num:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object p2, p0, Lorg/light/bean/Light3DMMFeature;->face_kit_vertices:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 14
    iget-object p2, p0, Lorg/light/bean/Light3DMMFeature;->proj_face_vertices:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 15
    iget p2, p0, Lorg/light/bean/Light3DMMFeature;->trace_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lorg/light/bean/Light3DMMFeature;->point_scale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 17
    iget p2, p0, Lorg/light/bean/Light3DMMFeature;->scale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 18
    iget-boolean p2, p0, Lorg/light/bean/Light3DMMFeature;->is_kissing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
