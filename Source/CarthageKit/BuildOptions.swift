import XCDBLD
import Result
import ReactiveSwift

/// The build options used for building `xcodebuild` command.
public struct BuildOptions {
	/// The Xcode configuration to build.
	public var configuration: String
	/// The platforms to build for.
	public var platforms: Set<SDK>?
	/// The toolchain to build with.
	public var toolchain: String?
	/// The path to the custom derived data folder.
	public var derivedDataPath: String?
	/// Whether to skip building if valid cached builds exist.
	public var cacheBuilds: Bool
	/// Whether to use downloaded binaries if possible.
	public var useBinaries: Bool
	/// Whether to create an XCFramework instead of lipoing built products.
	public var createXCFramework: Bool

	public init(
		configuration: String,
		platforms: Set<SDK>? = nil,
		toolchain: String? = nil,
		derivedDataPath: String? = nil,
		cacheBuilds: Bool = true,
		useBinaries: Bool = true,
		createXCFramework: Bool = false
	) {
		self.configuration = configuration
		self.platforms = platforms
		self.toolchain = toolchain
		self.derivedDataPath = derivedDataPath
		self.cacheBuilds = cacheBuilds
		self.useBinaries = useBinaries
		self.createXCFramework = createXCFramework
	}
}
